# Django core imports
from django.db import connection  # For raw SQL queries
from django.shortcuts import render, redirect, get_object_or_404  # Rendering templates and handling redirects
from django.contrib.auth import login  # Handling user authentication
from django.contrib import messages  # Flash messages for notifications
from django.contrib.auth.hashers import check_password  # Password hashing and verification
from django.core.files.storage import FileSystemStorage  # Handling file uploads
from django.conf import settings  # Accessing Django settings
from django.http import JsonResponse, FileResponse, HttpRequest  # JSON responses, file downloads, and HTTP requests
from django.urls import reverse  # URL handling
from django.core.mail import send_mail  # Sending emails
from django.utils.timezone import now  # Handling timezone-aware datetime
from django.utils.crypto import get_random_string  # Generating secure random strings
from django.http import Http404

import os
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from .models import FolderFile, StudentAccount, FilesShared
# Django ORM imports
from django.db.models import Prefetch, Q, OuterRef, Subquery, Exists  # Query optimization and filtering
import os
from django.shortcuts import render, redirect
from django.http import JsonResponse
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from .models import FolderFile, StudentAccount, FilesShared, FileOfStudents, FacultyFiles

# Models
from .models import (
    AdminLogs, StudentLogs, FilesShared, SharedFilesView, 
    FacultyAccount, StudentFolderView, FacultyAdminLogs, 
    StudentActivityLogs, StudentAccount, UserAccount, 
    FolderTns, FacultyFoldersView, StudentFolder, FolderFile, StudentInfo
)

# Forms
from .forms import MyForm  # Importing custom form

# Cryptography imports
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.backends import default_backend

# Python standard library imports
import os  # OS-level operations
import base64  # Encoding and decoding
import random  # Random number generation
import datetime  # Date and time handling


def log_action(user_type: str, user_id: str, action: str, request: HttpRequest):
    """
    A generic logging function to log actions for admin and student.
    
    :param user_type: 'admin' or 'student' to specify the user type
    :param user_id: The user ID (admin ID or student username)
    :param action: Description of the action performed
    :param request: The HttpRequest object to capture IP and user agent
    """
    ip_address = request.META.get('REMOTE_ADDR', '')
    user_agent = request.META.get('HTTP_USER_AGENT', '')

    if user_type == 'admin':
        # Log the action for admin
        AdminLogs.objects.create(
            admin_id=user_id,
            action=action,
            ip_address=ip_address,
            user_agent=user_agent
        )
    elif user_type == 'student':
        # Log the action for student
        StudentLogs.objects.create(
            student_id=user_id,
            action=action,
            ip_address=ip_address,
            user_agent=user_agent
        )


def generate_otp():
    """Generate a 6-digit OTP"""
    return str(random.randint(100000, 999999))

def send_email(otp, send_to):
    """Send OTP email"""
    subject = "Your One-Time Password (OTP)"
    message = f"Your OTP is {otp}. It is valid for 5 minutes."
    from_email = "dece.nas.system@gmail.com"
    recipient_list = [send_to]
    
    send_mail(subject, message, from_email, recipient_list)


def send_otp_pass(request):
    """Send OTP to the user's email for password reset"""
    if request.method == "POST":
        email = request.POST.get("email")
        try:
            # Check if the email exists in the database
            user = UserAccount.objects.get(username=email)
            # Generate OTP and store in session
            otp = generate_otp()
            request.session["otp"] = otp
            request.session["otp_expiry"] = (datetime.datetime.now() + datetime.timedelta(minutes=5)).isoformat()
            request.session["user_id"] = user.u_id  # Store the user_id in the session

            # Send the OTP to the user's email
            send_email(otp, email)
            messages.success(request, "An OTP has been sent to your email.")
            return redirect("enter_otp")

        except UserAccount.DoesNotExist:
            messages.error(request, "No account found with this email address.")
            return redirect("send_otp")  # Redirect back to the OTP request page

    return render(request, "forgot_password.html")  # Render the OTP request page 



def enter_otp_online(request):
    otp = request.session.get('otp', None)
    if not otp:
        return redirect(reverse('home'))  

    """Allow the user to enter OTP for verification"""
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        otp_expiry = request.session.get("otp_expiry")
        user_id = request.session.get("user_id")

        if not session_otp or datetime.datetime.now() > datetime.datetime.fromisoformat(otp_expiry):
            messages.error(request, "OTP has expired or is invalid.")
            return redirect("send_otp")  # Redirect to the OTP send page

        if str(entered_otp) == str(session_otp):
            return redirect("change_password_true")
        else:
            messages.error(request, "Invalid OTP.")
            return redirect("enter_otp")  # Redirect back to the OTP verification page

    return render(request, "enter_otp.html")  # Render OTP input page

def send_otp_pass_online(request):
    """Send OTP to the user's email for password reset"""
    if request.method == "POST":
        email = request.POST.get("email")
        try:
            # Check if the email exists in the database
            user = UserAccount.objects.get(username=email)
            # Generate OTP and store in session
            otp = generate_otp()
            request.session["otp"] = otp
            request.session["otp_expiry"] = (datetime.datetime.now() + datetime.timedelta(minutes=5)).isoformat()
            request.session["user_id"] = user.u_id  # Store the user_id in the session

            # Send the OTP to the user's email
            send_email(otp, email)
            messages.success(request, "An OTP has been sent to your email.")
            return redirect("enter_otp_online")

        except UserAccount.DoesNotExist:
            messages.error(request, "No account found with this email address.")
            return redirect("change_password_online")  # Redirect back to the OTP request page

    return render(request, "change_password_online.html")  # Render the OTP request page 



def enter_otp(request):
    otp = request.session.get('otp', None)
    if not otp:
        return redirect(reverse('home'))  

    """Allow the user to enter OTP for verification"""
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        otp_expiry = request.session.get("otp_expiry")
        user_id = request.session.get("user_id")

        if not session_otp or datetime.datetime.now() > datetime.datetime.fromisoformat(otp_expiry):
            messages.error(request, "OTP has expired or is invalid.")
            return redirect("send_otp")  # Redirect to the OTP send page

        if str(entered_otp) == str(session_otp):
            return redirect("change_password")
        else:
            messages.error(request, "Invalid OTP.")
            return redirect("enter_otp")  # Redirect back to the OTP verification page

    return render(request, "enter_otp.html")  # Render OTP input page



def default_password_user_one(request, user_id, role):
    admin_id = request.session.get('admin_id', None)

    if not admin_id:
        return redirect(reverse('admin_login'))  # 'faculty_login' should be the name of your login URL
    else:
        password = "user123"
        user = UserAccount.objects.get(u_id=user_id)
        user.hashed_password = encrypt(password, passwordUnique)  # You should hash the password before saving
        user.save()
        if role=='student':
            return redirect('student_accounts')  
        elif role=='admin':
            return redirect('admin_accounts')  # 'faculty_login' should be the name of your login URL

def default_password_all_users(request):
    admin_id = request.session.get('admin_id', None)

    if not admin_id:
        return redirect(reverse('admin_login'))  # 'faculty_login' should be the name of your login URL
    else:
        password = "user123"
        all_users = UserAccount.objects.all()
        for user in all_users:
            user.hashed_password = encrypt(password, passwordUnique)  # Make sure `encrypt` is defined properly
            user.save()
        return redirect(request.get_full_path())  # 'faculty_login' should be the name of your login URL


def change_password(request):
    
    otp = request.session.get('otp', None)
    if not otp:
        return redirect(reverse('home'))  
    """Allow the user to change their password after OTP verification"""
    if request.method == "POST":
        password = request.POST.get("password")
        confirm_password = request.POST.get("confirm_password")
        user_id = request.session.get("user_id")

        if password != confirm_password:
            messages.error(request, "Passwords do not match.")
            return redirect("change_password")  # Redirect back to the password change page

        # Update the password in the database
        user = UserAccount.objects.get(u_id=user_id)
        user.hashed_password = encrypt(password, passwordUnique)  # You should hash the password before saving
        user.save()
        messages.success(request, "Password updated successfully!")
        del request.session["otp"]
        return redirect("home")  # Redirect to login page or wherever appropriate

    return render(request, "change_password.html")  # Render password change form


def require_faculty_login(view_func):
    """
    Decorator to ensure that the faculty_id is available in the session.
    If faculty_id is not in the session, the user will be redirected to the admin login page.
    """
    def wrapper(request, *args, **kwargs):
        faculty_id = request.session.get('faculty_id', None)
        if not faculty_id:
            return redirect(reverse('admin_login'))  # Replace 'admin_login' with the actual login URL name
        return view_func(request, *args, **kwargs)
    
    return wrapper

# Generate a key from a password
def derive_key(password: str, salt: bytes) -> bytes:
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,  # AES-256 requires a 32-byte key
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    return kdf.derive(password.encode())

# Encrypt function
def encrypt(plaintext: str, password: str) -> str:
    salt = os.urandom(16)  # Generate a new salt for each encryption
    key = derive_key(password, salt)
    iv = os.urandom(16)  # AES requires a 16-byte IV
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    
    # PKCS7 Padding
    padding_length = 16 - (len(plaintext) % 16)
    padded_plaintext = plaintext + (chr(padding_length) * padding_length)

    ciphertext = encryptor.update(padded_plaintext.encode()) + encryptor.finalize()
    
    # Store salt, iv, and ciphertext together
    return base64.b64encode(salt + iv + ciphertext).decode()

# Decrypt function
def decrypt(encrypted_text: str, password: str) -> str:
    encrypted_data = base64.b64decode(encrypted_text)
    
    salt = encrypted_data[:16]  # Extract the salt
    iv = encrypted_data[16:32]  # Extract the IV
    ciphertext = encrypted_data[32:]  # Extract the actual ciphertext
    
    key = derive_key(password, salt)
    cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=default_backend())
    decryptor = cipher.decryptor()
    
    decrypted_padded = decryptor.update(ciphertext) + decryptor.finalize()
    
    # Remove PKCS7 padding
    padding_length = ord(decrypted_padded[-1:])
    return decrypted_padded[:-padding_length].decode()

# Example Usage
passwordUnique = "hashedpassword143"
# text_to_encrypt = "hashedpassword1"

# encrypted = encrypt(text_to_encrypt, password)
# print("Encrypted:", encrypted)

# decrypted = decrypt(encrypted, password)
# print("Decrypted:", decrypted)


# login_admin function
def login_admin(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('admin_login_attempts', 0)
    lockout_time = request.session.get('admin_lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'admin_p/a-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()

    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password FROM user_account 
                    WHERE username = %s AND u_id = 111111
                """, [username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['admin_id'] = u_id  
                    request.session['a_fullname'] = username  
                    request.session.pop('admin_login_attempts', None)  # Reset attempts on success
                    request.session.pop('admin_lockout_time', None)  # Remove lockout if present
                    log_action('admin', u_id, 'Logged In', request)

                    return redirect('a_dashboard')  
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found, or account not yet verified!")

            # Increment login attempts
            attempts += 1
            request.session['admin_login_attempts'] = attempts

            # Lock the account after 3 failed attempts
            if attempts >= 3:
                lockout_time = now() + datetime.datetime.timedelta(minutes=5)
                request.session['admin_lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('admin_lockout_time') is not None}
    return render(request, 'admin_p/a-login.html', context)



def login_faculty(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('faculty_login_attempts', 0)
    lockout_time = request.session.get('faculty_lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'faculty/a-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()
    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password, first_name, last_name, middle_name, faculty_id  
                    FROM faculty_accounts 
                    WHERE (username = %s OR gsuite = %s) AND email_verified = 'yes'
                """, [username_or_email, username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password, first_name, middle_name, last_name, faculty_id = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['faculty_id'] = faculty_id  
                    request.session['a_fullname'] = f"{first_name} {middle_name} {last_name}"  
                    request.session.pop('faculty_login_attempts', None)  # Reset attempts on success
                    request.session.pop('faculty_lockout_time', None)  # Remove lockout if present
                    log_action('admin', u_id, 'Logged In', request)

                    
                    return redirect('faculty_folders')  
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found, or account not yet verified!")

            # Increment login attempts
            attempts += 1
            request.session['faculty_login_attempts'] = attempts

            # Lock the account after 3 failed attempts
            if attempts >= 3:
                lockout_time = now() + datetime.datetime.timedelta(minutes=5)
                request.session['faculty_lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")
                log_action('admin', u_id, 'Logged In too many failed attempts, locked for 5 minutes', request)

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('faculty_lockout_time') is not None}
    return render(request, 'faculty/a-login.html', context)

def home(request):

    return render(request, 'landing.html')

def read_html(request):
   
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('admin_login'))  # 'faculty_login' should be the name of your login URL
        
    total_size_bytes = 0
    total_files = 0
    total_folders = 0

    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month

    files_today = 0
    files_this_week = 0
    files_this_month = 0

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            total_size_bytes += os.path.getsize(file_path)  # Get file size

            # Get file modification time
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

            if file_mod_time == today:
                files_today += 1
            if file_mod_time >= start_of_week:
                files_this_week += 1
            if file_mod_time >= start_of_month:
                files_this_month += 1
    
    latest_files = []

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            file_size = os.path.getsize(file_path)  # File size in bytes
            file_ext = os.path.splitext(file)[1]  # Get file extension
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path))  # Modification time

            total_size_bytes += file_size

            

            # Store latest files with details
            latest_files.append({
                "name": file,
                "extension": file_ext,
                "size_mb": round(file_size / (1024 ** 2), 2),  # Convert to MB
                "folder": root.replace(NETWORK_DRIVE_PATH, "").strip("\\"),
                "modified_time": file_mod_time.strftime("%Y-%m-%d %H:%M:%S"),
            })

    # Sort by modification time (latest first) and get the latest 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]

    all_users = UserAccount.objects.all()
    flagged_users = []

    for user in all_users:
        user_files = []
        if user.faculty:
            user_files = FolderFile.objects.filter(uploader_id=user.faculty.id)
        elif user.student:
            user_files = FolderFile.objects.filter(uploader_id=user.student.sr_code)

        used_bytes = 0
        for file in user_files:
            file_path = os.path.join(NETWORK_DRIVE_PATH, file.folder_code , file.file_name)
            if os.path.exists(file_path):
                used_bytes += os.path.getsize(file_path)

        used_mb = round(used_bytes / (1024**2), 2)

        if user.get_storage_limit(used_mb) != None:
            flagged_users.append({
                "username": user.username,
                "used_mb": used_mb,
                "limit_mb": user.mb_limit,
                "alert": user.get_storage_notification(used_mb)
            })



    # Pass the session data to the template
    context = {
        'admin_id': admin_id,
        'full_name': full_name,
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
        "flagged_users": flagged_users
      
    }

    return render(request, 'admin_p/index.html', context)

def read_html_f(request):
   
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
        
    total_size_bytes = 0
    total_files = 0
    total_folders = 0

    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month

    files_today = 0
    files_this_week = 0
    files_this_month = 0

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            total_size_bytes += os.path.getsize(file_path)  # Get file size

            # Get file modification time
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

            if file_mod_time == today:
                files_today += 1
            if file_mod_time >= start_of_week:
                files_this_week += 1
            if file_mod_time >= start_of_month:
                files_this_month += 1
    
    latest_files = []

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            file_size = os.path.getsize(file_path)  # File size in bytes
            file_ext = os.path.splitext(file)[1]  # Get file extension
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path))  # Modification time

            total_size_bytes += file_size

            

            # Store latest files with details
            latest_files.append({
                "name": file,
                "extension": file_ext,
                "size_mb": round(file_size / (1024 ** 2), 2),  # Convert to MB
                "folder": root.replace(NETWORK_DRIVE_PATH, "").strip("\\"),
                "modified_time": file_mod_time.strftime("%Y-%m-%d %H:%M:%S"),
            })

    # Sort by modification time (latest first) and get the latest 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]


    # Pass the session data to the template
    context = {
        'faculty_id': faculty_id,
        'full_name': full_name,
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
      
    }
    

    return render(request, 'faculty/index.html', context)

def read_html_s(request):
    student_id = request.session.get('student_id', None)
    full_name = request.session.get('s_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not student_id:
        return redirect(reverse('student_login'))  # 'admin_login' should be the name of your login URL

        
    total_size_bytes = 0
    total_files = 0
    total_folders = 0

    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month

    files_today = 0
    files_this_week = 0
    files_this_month = 0

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            total_size_bytes += os.path.getsize(file_path)  # Get file size

            # Get file modification time
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

            if file_mod_time == today:
                files_today += 1
            if file_mod_time >= start_of_week:
                files_this_week += 1
            if file_mod_time >= start_of_month:
                files_this_month += 1
    
    latest_files = []

    for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
        total_folders += len(dirs)
        total_files += len(files)

        for file in files:
            file_path = os.path.join(root, file)
            file_size = os.path.getsize(file_path)  # File size in bytes
            file_ext = os.path.splitext(file)[1]  # Get file extension
            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path))  # Modification time

            total_size_bytes += file_size

            

            # Store latest files with details
            latest_files.append({
                "name": file,
                "extension": file_ext,
                "size_mb": round(file_size / (1024 ** 2), 2),  # Convert to MB
                "folder": root.replace(NETWORK_DRIVE_PATH, "").strip("\\"),
                "modified_time": file_mod_time.strftime("%Y-%m-%d %H:%M:%S"),
            })

    # Sort by modification time (latest first) and get the latest 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]


    # Pass the session data to the template
    context = {
        'student_id': student_id,
        'full_name': full_name,
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
      
    }
 

    return render(request, 'student/index.html', context)




def fetch_data(query):
    with connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
    return result


def admin_logs(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)


    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    data = FacultyAdminLogs.objects.all()
    return render(request, 'admin_p/admin-logs.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})

def student_logs(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL


    data = StudentActivityLogs.objects.all()

    return render(request, 'admin_p/student-logs.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})


def admin_accounts(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    if request.method == 'POST':
        if 'limit' in request.POST:
            user_id = request.POST.get("user_id")
            mb_limit = request.POST.get("mb_limit")
            user = get_object_or_404(UserAccount, u_id=user_id)
                
                # Update the user's password
            user.mb_limit = mb_limit
            user.save()
            return redirect("admin_accounts")  # Redirect to email verification page
        else:
            first_name = request.POST.get("first_name")
            middle_name = request.POST.get("middle_name")
            last_name = request.POST.get("last_name")
            username = request.POST.get("username")
            password = request.POST.get("password")

            hashed_password = encrypt(password, passwordUnique)  # Hash the password before storing

            try:
                with connection.cursor() as cursor:
                        # Check if the student already exists in student_info
                    cursor.execute("SELECT COUNT(*) FROM faculty_info WHERE gsuite = %s", [username])
                    student_exists = cursor.fetchone()[0] > 0

                        # Check if the user already exists in user_account
                    cursor.execute("SELECT COUNT(*) FROM user_account WHERE username = %s", [username])
                    user_exists = cursor.fetchone()[0] > 0

                    f_id = random.randint(10000, 99999)

                    if not student_exists:
                            # Insert into student_info if not exists
                        cursor.execute(
                            "INSERT INTO faculty_info (id, gsuite, first_name, middle_name, last_name) VALUES (%s,%s, %s, %s, %s)",
                            ( f_id, username, first_name, middle_name, last_name),
                        )

                    if not user_exists:
                            # Insert into user_account if not exists
                        cursor.execute(
                            "INSERT INTO user_account (username, hashed_password, faculty_id, email_verified) VALUES (%s, %s, %s, %s)",
                            (username, hashed_password, f_id, 'no'),
                        )
                    log_action('admin', admin_id, 'Admin added a faculty to the system', request)

                    messages.error(request, "Faculty registered success, verification of faculty in progress")
                    return redirect("admin_accounts")  # Redirect to email verification page

            except Exception as e:
                messages.error(request, f"Error: {e}")

    data = FacultyAccount.objects.all()
    return render(request, 'admin_p/admin-accounts.html', {'admin_id': admin_id,'full_name': full_name,'data': data})


 


def student_accounts(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL
    
        
    if request.method == 'POST':
        if 'limit' in request.POST:
            user_id = request.POST.get("user_id")
            mb_limit = request.POST.get("mb_limit")
            user = get_object_or_404(UserAccount, u_id=user_id)
            
            # Update the user's password
            user.mb_limit = mb_limit
            user.save()
            return redirect("student_accounts")  # Redirect to email verification page

        else:
            first_name = request.POST.get("first_name")
            middle_name = request.POST.get("middle_name")
            last_name = request.POST.get("last_name")
            sr_code = request.POST.get("sr_code")
            username = request.POST.get("username")
            password = request.POST.get("password")

            hashed_password = encrypt(password, passwordUnique)  # Hash the password before storing
            student_email = f"{sr_code}@g.batstate-u.edu.ph"

            try:
                with connection.cursor() as cursor:
                        # Check if the student already exists in student_info
                    cursor.execute("SELECT COUNT(*) FROM student_info WHERE sr_code = %s", [sr_code])
                    student_exists = cursor.fetchone()[0] > 0

                        # Check if the user already exists in user_account
                    cursor.execute("SELECT COUNT(*) FROM user_account WHERE username = %s", [student_email])
                    user_exists = cursor.fetchone()[0] > 0

                    if not student_exists:
                            # Insert into student_info if not exists
                        cursor.execute(
                            "INSERT INTO student_info (sr_code, g_email, first_name, middle_name, last_name) VALUES (%s, %s, %s, %s, %s)",
                            (sr_code, student_email, first_name, middle_name, last_name),
                        )

                    if not user_exists:
                            # Insert into user_account if not exists
                        cursor.execute(
                            "INSERT INTO user_account (username, hashed_password, student_id, email_verified) VALUES (%s, %s, %s, %s)",
                            (student_email, hashed_password, sr_code, 'no'),
                        )
                    log_action('admin', admin_id, 'Admin added a student to the system', request)

                    messages.error(request, "Student registered success, verification of student in progress")
                    return redirect("student_accounts")  # Redirect to email verification page

            except Exception as e:
                messages.error(request, f"Error: {e}")

    data = StudentAccount.objects.all()
    return render(request, 'admin_p/student-accounts.html', {'admin_id': admin_id, 'full_name': full_name,'data': data})

def logout_admin(request):
    request.session.flush()
    return redirect('admin_login')

def logout_faculty(request):
    log_action('admin', request.session.get('faculty_id', None), 'Logged out', request)
    request.session.flush()
    return redirect('faculty_login')

def logout_student(request):
    log_action('student', request.session.get('student_id', None), 'Logged out', request)
    request.session.flush()
    return redirect('student_login')

def reg_admin(request):
    return render(request, 'admin_p/a-register.html')



def login_student(request):
    form = MyForm(request.POST or None)

    # Get login attempts from session
    attempts = request.session.get('login_attempts', 0)
    lockout_time = request.session.get('lockout_time')

    # Check if user is locked out
    if lockout_time and now() < datetime.fromisoformat(lockout_time):
        return render(request, 'student/s-login.html', {'form': form, 'locked_out': True})

    if lockout_time and now() > datetime.fromisoformat(lockout_time):
        request.session.flush()

    if request.method == 'POST':
        if form.is_valid():
            username_or_email = request.POST.get('email-username')
            password = request.POST.get('password')

            with connection.cursor() as cursor:
                cursor.execute("""
                    SELECT u_id, username, hashed_password, first_name, middle_name, last_name, student_id  
                    FROM student_accounts 
                    WHERE username = %s  AND email_verified = 'yes'
                """, [username_or_email])
                faculty = cursor.fetchone()

            if faculty:
                u_id, username, hashed_password, first_name, middle_name, last_name, student_id = faculty

                if decrypt(hashed_password, passwordUnique) == password:
                    request.session['student_id'] = student_id  
                    request.session['s_fullname'] = f"{first_name} {middle_name} {last_name}"
                    request.session.pop('login_attempts', None)  # Reset attempts on success
                    request.session.pop('lockout_time', None)  # Remove lockout if present
                    log_action('student', student_id, 'Logged in', request)

                    
                    return redirect('student_folder')
                else:
                    messages.error(request, "Invalid password!")
            else:
                messages.error(request, "User not found, or account not yet verified!")

            # Increment login attempts
            attempts += 1
            request.session['login_attempts'] = attempts

            # Lock the account after 3 attempts
            if attempts >= 3:
                lockout_time = now() + datetime.datetime.timedelta(minutes=5)
                request.session['lockout_time'] = lockout_time.isoformat()
                messages.error(request, "Too many failed attempts. Try again in 5 minutes.")
                log_action('student', student_id, 'Logged In too many failed attempts, locked for 5 minutes', request)

        else:
            messages.error(request, "Invalid CAPTCHA! Please try again.")

    context = {'form': form, 'locked_out': request.session.get('lockout_time') is not None}
    return render(request, 'student/s-login.html', context)




def verify_otp_f(request):
    """Verify user input OTP"""
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        expiry = request.session.get("otp_expiry")

        if not session_otp or not expiry:
            messages.error(request, "OTP expired. Please request a new one.")
            return redirect("faculty_everif")

        if now() > datetime.datetime.fromisoformat(expiry):
            messages.error(request, "OTP has expired. Request a new one.")
            return redirect("faculty_everif")

        if entered_otp == session_otp:
            # Mark email as verified in DB
            user = UserAccount.objects.filter(faculty_id=request.session["faculty_id"]).first()
            if user:
                user.email_verified = "yes"
                user.save()
            
            messages.success(request, "Email verified successfully!")
            return redirect("faculty_login")

        else:
            messages.error(request, "Invalid OTP. Try again.")
            return redirect("faculty_everif")


def faculty_everif(request):
    """Handle OTP verification"""
    faculty_gsuite = request.session.get("faculty_gsuite", None)
    faculty_id = request.session.get("faculty_id", None)
    otp_now = request.session.get("otp", None)

    if not faculty_gsuite:
        return redirect("faculty_reg")  # Redirect if no email in session

    # Generate OTP and store in session
    if not faculty_gsuite:
        otp = generate_otp()
        request.session["otp"] = otp
        request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()

        send_email(otp, faculty_gsuite)
    messages.success(request, "An OTP has been sent to your email.")

    return render(request, "faculty/f-everif.html", {"faculty_gsuite": faculty_gsuite, "faculty_id": faculty_id})



def reg_faculty(request):
    form = MyForm(request.POST or None)

    if request.method == 'POST':
        if form.is_valid():
            first_name = request.POST.get("first_name")
            middle_name = request.POST.get("middle_name")
            last_name = request.POST.get("last_name")
            gsuite = request.POST.get("gsuite")
            username = request.POST.get("username")
            password = request.POST.get("password")

            hashed_password = encrypt(password, passwordUnique)  # Hash the password before storing

            try:
                with connection.cursor() as cursor:
                    # Check if the faculty already exists in faculty_info
                    cursor.execute("SELECT COUNT(*) FROM faculty_info WHERE gsuite = %s", [gsuite])
                    faculty_exists = cursor.fetchone()[0] > 0

                    # Check if the user already exists in user_account
                    cursor.execute("SELECT COUNT(*) FROM user_account WHERE username = %s", [gsuite])
                    user_exists = cursor.fetchone()[0] > 0

                    if not faculty_exists:
                        # Insert into faculty_info if not exists
                        cursor.execute(
                            "INSERT INTO faculty_info (gsuite, first_name, middle_name, last_name) VALUES (%s, %s, %s, %s)",
                            (gsuite, first_name, middle_name, last_name),
                        )
                        
                        # Retrieve the inserted faculty ID
                        cursor.execute("SELECT id FROM faculty_info WHERE gsuite = %s", [gsuite])
                        faculty_id = cursor.fetchone()[0]
                    else:
                        cursor.execute("SELECT id FROM faculty_info WHERE gsuite = %s", [gsuite])
                        faculty_id = cursor.fetchone()[0]

                    if not user_exists:
                        # Insert into user_account if not exists
                        cursor.execute(
                            "INSERT INTO user_account (username, hashed_password, faculty_id, email_verified) VALUES (%s, %s, %s, %s)",
                            (gsuite, hashed_password, faculty_id, 'no'),
                        )

                request.session['faculty_gsuite'] = gsuite
                request.session['faculty_id'] = faculty_id
                otp = generate_otp()
                request.session["otp"] = otp
                request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()

                send_email(otp, gsuite)
                messages.success(request, "An OTP has been sent to your email.")
                log_action('faculty', faculty_id, 'Registered to the system', request)

                messages.success(request, "Registration successful! Please verify your email.")
                return redirect("faculty_everif")  # Redirect to email verification page

            except Exception as e:
                messages.error(request, f"Error: {e}")

    context = {'form': form}
    return render(request, "faculty/f-register.html", context)

def faculty_direct_verif(request):
    """Handle OTP verification"""
    if request.method == 'POST':
        g_email = request.POST.get('g_email')
        try:
            if UserAccount.objects.filter(username=g_email, email_verified='no').exists():
                student = FacultyAccount.objects.get(gsuite=g_email)
                request.session['faculty_gsuite'] = student.gsuite
                request.session['faculty_id'] = student.faculty_id
                otp = generate_otp()
                request.session["otp"] = otp
                request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()
                send_email(otp, student.gsuite)
                return redirect("faculty_everif")
            else:
                messages.error(request, "Email is already verified or does not exist.")
        except StudentInfo.DoesNotExist:
            messages.error(request, "Student with this email does not exist.")
        
    return render(request, "student/s-dverif.html")
	

def reg_student(request):
    form = MyForm(request.POST or None)

    if request.method == 'POST':
        if form.is_valid():
            first_name = request.POST.get("first_name")
            middle_name = request.POST.get("middle_name")
            last_name = request.POST.get("last_name")
            sr_code = request.POST.get("sr_code")
            username = request.POST.get("username")
            password = request.POST.get("password")

            hashed_password = encrypt(password, passwordUnique)  # Hash the password before storing
            student_email = f"{sr_code}@g.batstate-u.edu.ph"

            try:
                with connection.cursor() as cursor:
                    # Check if the student already exists in student_info
                    cursor.execute("SELECT COUNT(*) FROM student_info WHERE sr_code = %s", [sr_code])
                    student_exists = cursor.fetchone()[0] > 0

                    # Check if the user already exists in user_account
                    cursor.execute("SELECT COUNT(*) FROM user_account WHERE username = %s", [student_email])
                    user_exists = cursor.fetchone()[0] > 0

                    if not student_exists:
                        # Insert into student_info if not exists
                        cursor.execute(
                            "INSERT INTO student_info (sr_code, g_email, first_name, middle_name, last_name) VALUES (%s, %s, %s, %s, %s)",
                            (sr_code, student_email, first_name, middle_name, last_name),
                        )

                    if not user_exists:
                        # Insert into user_account if not exists
                        cursor.execute(
                            "INSERT INTO user_account (username, hashed_password, student_id, email_verified) VALUES (%s, %s, %s, %s)",
                            (student_email, hashed_password, sr_code, 'no'),
                        )

                request.session['student_email'] = student_email
                request.session['student_srcode'] = sr_code
                log_action('student', sr_code, 'Registered to the system', request)
                otp = generate_otp()
                request.session["otp"] = otp
                request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()
                send_email(otp, student_email)

                messages.success(request, "Registration successful! Please verify your email.")
                return redirect("student_everif")  # Redirect to email verification page

            except Exception as e:
                messages.error(request, f"Error: {e}")

    context = {'form': form}
    return render(request, "student/s-register.html", context)


def admin_folders(request):
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('faculty_login'))  # 'faculty_login' should be the name of your login URL

    # Retrieve all student folders without filtering by faculty_id
    student_folders = StudentFolderView.objects.all()

    # Group by unique_code for the folder
    grouped_folders = {}
    for folder in student_folders:
        unique_code = folder.unique_code
        if unique_code not in grouped_folders:
            grouped_folders[unique_code] = {
                'folder_name': folder.folder_name,
                'description': folder.description,
                'apicode': folder.apicode,
                'faculty_gsuite': folder.faculty_gsuite,
                'students': []
            }
        # Append student details to the students list
        student_name = f"{folder.student_first_name} {folder.student_last_name}"
        grouped_folders[unique_code]['students'].append(student_name)

    # Pass the session data and grouped folders to the template
    context = {
        'admin_id': admin_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders
    }

    return render(request, 'admin_p/folders.html', context)




def join_folder(request):
    student_id = request.session.get('student_id', None)
    
    if request.method == 'POST' and student_id:
        unique_code = request.POST.get('unique_code')
        # Find folder by unique_code
        try:
            folder = FolderTns.objects.get(unique_code=unique_code)
            
            # Check if the student has already joined this folder
            if StudentFolder.objects.filter(student_id=student_id, folder=folder).exists():
                return redirect('student_folder')  # or show a message: "Already joined this folder"
            
            # Add student to the folder
            StudentFolder.objects.create(student_id=student_id, folder=folder)
            return redirect('student_folder')
        except FolderTns.DoesNotExist:
            # Handle case where the folder is not found
            return redirect('student_folder')  # or show a message: "Folder not found"
    return redirect('student_folder')



def student_direct_verif(request):
    """Handle OTP verification"""
    if request.method == 'POST':
        g_email = request.POST.get('g_email')
        try:
            if UserAccount.objects.filter(username=g_email, email_verified='no').exists():
                student = StudentInfo.objects.get(g_email=g_email)
                request.session['student_email'] = student.g_email
                request.session['student_srcode'] = student.sr_code
                otp = generate_otp()
                request.session["otp"] = otp
                request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()
                send_email(otp, student.g_email)
                return redirect("student_everif")
            else:
                messages.error(request, "Email is already verified or does not exist.")
        except StudentInfo.DoesNotExist:
            messages.error(request, "Student with this email does not exist.")
        
    return render(request, "student/s-dverif.html")


def get_user_storage_usage(user):
    # For example, files might be stored under a folder named after the user's ID
    user_folder = os.path.join(settings.MEDIA_ROOT, f'user_uploads/{user.u_id}')
    total_size = 0
    for dirpath, dirnames, filenames in os.walk(user_folder):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            total_size += os.path.getsize(fp)
    return round(total_size / (1024 * 1024), 2)  # Convert bytes to MB


def student_everif(request):
    """Handle OTP verification"""
    student_email = request.session.get("student_email", None)
    student_srcode = request.session.get("student_srcode", None)
    if request.method == "POST":
        

        if not student_email:
            return redirect("student_reg")  # Redirect if no email in session

        # Generate OTP and store in session
        otp = generate_otp()
        request.session["otp"] = otp
        request.session["otp_expiry"] = (now() + datetime.timedelta(minutes=5)).isoformat()

        send_email(otp, student_email)
        messages.success(request, "An OTP has been sent to your email.")
        return render(request, "student/s-everif.html", {"student_email": student_email, "student_srcode": student_srcode})

    return render(request, "student/s-everif.html", {"student_email": student_email, "student_srcode": student_srcode})





def verify_otp(request):
    """Verify user input OTP"""
    student_srcode = request.session.get("student_srcode", "na")
    faculty_gsuite = request.session.get("faculty_gsuite", "na")
    if request.method == "POST":
        entered_otp = request.POST.get("otp")
        session_otp = request.session.get("otp")
        expiry = request.session.get("otp_expiry")

        if not session_otp or not expiry:
            messages.error(request, "OTP expired. Please request a new one.")
            if student_srcode != 'na':
                return redirect("student_everif")

            if faculty_gsuite != 'na':
                return redirect("faculty_everif")

        if now() > datetime.datetime.fromisoformat(expiry):
            messages.error(request, "OTP has expired. Request a new one.")
            if student_srcode != 'na':
                return redirect("student_everif")

            if faculty_gsuite != 'na':
                return redirect("faculty_everif")

        if entered_otp == session_otp:
            # Mark email as verified in DB


            if student_srcode != 'na':
                user = UserAccount.objects.filter(student_id=request.session["student_srcode"]).first()
                if user:
                    user.email_verified = "yes"
                    user.save()
            
                messages.success(request, "Email verified successfully!")
                return redirect("student_login")
            if faculty_gsuite != 'na':
                user = UserAccount.objects.filter(username=request.session["faculty_gsuite"]).first()
                if user:
                    user.email_verified = "yes"
                    user.save()
                
                messages.success(request, "Email verified successfully!")
                return redirect("faculty_login")


        else:
            if student_srcode != 'na':
                messages.error(request, "Invalid OTP. Try again.")
                return redirect("student_everif")

            if faculty_gsuite != 'na':
                messages.error(request, "Invalid OTP. Try again.")
                return redirect("faculty_everif")




import os
from subprocess import run, CalledProcessError
from django.conf import settings

def map_network_drive():
  
    network_drive = settings.NETWORK_DRIVE
    username = network_drive.get("username")
    password = network_drive.get("password")
    drive_letter = network_drive["drive_letter"]
    network_path = network_drive["network_path"]
    
    try:
        # Check if the network drive is already mapped
        result = run(["net", "use"], capture_output=True, text=True)
        if drive_letter in result.stdout:
            # Unmount the drive if already mapped
            run(["net", "use", drive_letter, "/delete", "/y"], check=True)
        
        # Map the network drive with authentication
        run([
            "net", "use", drive_letter, network_path, password, "/user:" + username, "/persistent:yes"
        ], check=True)
    except CalledProcessError as e:
        print(f"Error mapping network drive: {e}")
        raise Exception("Failed to map network drive.")


# Define the Network Drive Path
NETWORK_DRIVE_PATH =  r"\\172.16.127.120\shared_folder"  # Update this if needed 

""" 
def map_network_drive():

    network_drive = settings.NETWORK_DRIVE
    try:
        # Run the 'net use' command without user authentication
        run([
            "net", "use", network_drive["drive_letter"], network_drive["network_path"],
            "/persistent:yes"
        ], check=True)
    except CalledProcessError as e:
        print(f"Error mapping network drive: {e}")
        raise Exception("Failed to map network drive.")


# Define the Network Drive Path
NETWORK_DRIVE_PATH = r"Z:\\"  # Update this if needed

    """
# Allowed file types
IMAGE_EXTENSIONS = (".jpg", ".jpeg", ".png", ".gif", ".bmp", ".webp")
VIDEO_EXTENSIONS = (".mp4", ".avi", ".mov", ".mkv", ".flv")

PDF_EXTENSION = ".pdf"


def list_network_files(request):
    """ List all folders and files in the network drive, categorizing files by type. """
    
    admin_id = request.session.get('admin_id', None)
    full_name = request.session.get('a_fullname', None)

    # If there is no faculty_id in the session, redirect to the admin login page
    if not admin_id:
        return redirect(reverse('admin_login'))  # 'faculty_login' should be the name of your login URL
        
    
    data = {
        "folders": {},  # Dictionary to hold folders and their respective files
        "pdfs": [],
        "texts": [],
        "images": [],
        "videos": []
    }

    if os.path.exists(NETWORK_DRIVE_PATH):
        all_entries = os.listdir(NETWORK_DRIVE_PATH)

        for entry in all_entries:
            full_path = os.path.join(NETWORK_DRIVE_PATH, entry)

            if os.path.isdir(full_path):  # If it's a folder
                folder_files = {
                    "pdfs": [],
                    "texts": [],
                    "images": [],
                    "videos": []
                }

                for file in os.listdir(full_path):
                    file_path = os.path.join(full_path, file)

                    if os.path.isfile(file_path):  # Ensure it's a file, not a subfolder
                        file_lower = file.lower()
                        if file_lower.endswith(PDF_EXTENSION):
                            folder_files["pdfs"].append(file)
                        elif file_lower.endswith(IMAGE_EXTENSIONS):
                            folder_files["images"].append(file)
                        elif file_lower.endswith(VIDEO_EXTENSIONS):
                            folder_files["videos"].append(file)
                        elif file_lower.endswith(TEXT_EXTENSION):
                            folder_files["texts"].append(file)

                data["folders"][entry] = folder_files  # Store folder and its categorized files

            elif os.path.isfile(full_path):  # If it's a file in the root directory
                entry_lower = entry.lower()
                if entry_lower.endswith(PDF_EXTENSION):
                    data["pdfs"].append(entry)
                elif entry_lower.endswith(IMAGE_EXTENSIONS):
                    data["images"].append(entry)
                elif entry_lower.endswith(VIDEO_EXTENSIONS):
                    data["videos"].append(entry)
                elif entry_lower.endswith(TEXT_EXTENSION):
                    data["texts"].append(entry)

    return render(request, "list_files.html", {"data": data})

TEXT_EXTENSION = ".txt"

def serve_file(request, filename):
    """ Serve PDF, image, or video from the network drive. """
    file_path = os.path.join(NETWORK_DRIVE_PATH, filename)

    if not os.path.exists(file_path):
        raise Http404("File not found")

    # Determine content type
    if filename.endswith(PDF_EXTENSION):
        content_type = "application/pdf"
    elif filename.endswith(IMAGE_EXTENSIONS):
        content_type = "image/jpeg"  # Generic image type
    elif filename.endswith(VIDEO_EXTENSIONS):
        content_type = "video/mp4"  # Generic video type
    elif filename.endswith(TEXT_EXTENSION):
        content_type = "text/plain"  # Generic video type
    else:
        raise Http404("Unsupported file type")

    response = FileResponse(open(file_path, "rb"), content_type=content_type)
    response["Content-Disposition"] = f'inline; filename="{filename}"'  # Inline viewing
    return response


def serve_folder_file(request, filename, folder_code):
    """ Serve PDF, image, or video from the network drive. """
    file_path = os.path.join(NETWORK_DRIVE_PATH, *folder_code.split('_') , filename)

    if not os.path.exists(file_path):
        raise Http404("File not found")

    # Determine content type
    if filename.endswith(PDF_EXTENSION):
        content_type = "application/pdf"
    elif filename.endswith(IMAGE_EXTENSIONS):
        content_type = "image/jpeg"  # Generic image type
    elif filename.endswith(VIDEO_EXTENSIONS):
        content_type = "video/mp4"  # Generic video type
    elif filename.endswith(TEXT_EXTENSION):
        content_type = "text/plain"
    else:
        raise Http404("Unsupported file type")

    response = FileResponse(open(file_path, "rb"), content_type=content_type)
    response["Content-Disposition"] = f'inline; filename="{filename}"'  # Inline viewing
    return response


def get_student_folders_with_students(folder_code):
    # Step 1: Get all folders for the given student
    student_folders = StudentFolderView.objects.filter(unique_code=folder_code).filter(
        Q(unique_code__startswith=f"{folder_code}_")) \
        .values('unique_code', 'folder_name', 'description', 'apicode', 'unique_code','faculty_gsuite')

    grouped_folders = {}

    for folder in student_folders:
        unique_code = folder['unique_code']

        if unique_code not in grouped_folders:
            # Initialize folder group
            grouped_folders[unique_code] = {
                'folder_name': folder['folder_name'],
                'description': folder['description'],
                'faculty_gsuite': folder['faculty_gsuite'],
                'apicode': folder['apicode'],
                'unique_code': folder['unique_code'],
                'students': []
            }

            # Step 2: Fetch all students linked to the same folder
            students_in_folder = StudentFolderView.objects.filter(unique_code=unique_code)

            for student in students_in_folder:
                grouped_folders[unique_code]['students'].append({
                    'student_id': student.sr_code,
                    'first_name': student.student_first_name,
                    'middle_name': student.student_middle_name,
                    'last_name': student.student_last_name,
                    'username': f"{student.sr_code}@g.batstate-u.edu.ph",
                })

    return list(grouped_folders.values())

from django.db.models import Func, F, Value, IntegerField, ExpressionWrapper

def get_immediate_student_subfolders(student_id, parent_code):
    base_level = parent_code.count('_')

    # Count underscores: (CHAR_LENGTH(unique_code) - CHAR_LENGTH(REPLACE(unique_code, '_', '')))
    underscore_count_expr = ExpressionWrapper(
        Func(F('unique_code'), function='CHAR_LENGTH') -
        Func(
            Func(F('unique_code'), Value('_'), Value(''), function='REPLACE'),
            function='CHAR_LENGTH'
        ),
        output_field=IntegerField()
    )

    return StudentFolderView.objects.filter(
        sr_code=student_id,
        unique_code__startswith=parent_code + '_'
    ).annotate(
        underscore_count=underscore_count_expr
    ).filter(
        underscore_count=base_level + 1
    )



def get_immediate_faculty_subfolders(faculty_id, parent_code):
    base_level = parent_code.count('_')

    underscore_count_expr = ExpressionWrapper(
        Func(F('unique_code'), function='CHAR_LENGTH') -
        Func(
            Func(F('unique_code'), Value('_'), Value(''), function='REPLACE'),
            function='CHAR_LENGTH'
        ),
        output_field=IntegerField()
    )

    return FacultyFoldersView.objects.filter(
        faculty_id=faculty_id,
        unique_code__startswith=parent_code + '_'
    ).annotate(
        underscore_count=underscore_count_expr
    ).filter(
        underscore_count=base_level + 1
    )

def view_folder_s(request, folder_code):
    """ Faculty view of folder with file listing. """
    student_id = request.session.get("student_id")
    full_name = request.session.get("s_fullname")

    if not student_id:
        return redirect(reverse("student_login"))

    matching_folders = get_immediate_student_subfolders(student_id=student_id, parent_code=folder_code)


    grouped_folders = {}
    for folder in matching_folders:
        code = folder.unique_code
        if code not in grouped_folders:
            grouped_folders[code] = {
                'folder_name': folder.folder_name,
                'description': folder.description,
                'unique_code': folder.unique_code,
                'apicode': folder.apicode,
                'faculty_gsuite': folder.faculty_gsuite,
                'students': []
            }
        students_in_folder = StudentFolderView.objects.filter(unique_code=code)

        for student in students_in_folder:
            grouped_folders[code]['students'].append({
                'student_id': student.sr_code,
                'first_name': student.student_first_name,
                'middle_name': student.student_middle_name,
                'last_name': student.student_last_name,
                'username': f"{student.sr_code}@g.batstate-u.edu.ph",
            })
    print(grouped_folders)

    foldertns = FolderTns.objects.get(unique_code=folder_code)
    fid = foldertns.faculty_id
    # Get the student's folder files
    folder_files1 = FolderFile.objects.filter(folder_code=folder_code, uploader_id=student_id)
    folder_files2 = FacultyFiles.objects.filter(folder_code=folder_code, uploader_id=fid)
    shared_files = FilesShared.objects.filter(folder_code=folder_code)
    students = StudentAccount.objects.all()

    # Combine both folder files into one queryset
    all_folder_files = list(folder_files1) + list(folder_files2)



    # Initialize counters
    total_size_bytes = 0
    total_files = 0
    total_folders = 0
    files_today = 0
    files_this_week = 0
    files_this_month = 0
    latest_files = []

    # Get current date info for filtering
    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month

    # Get folder path
    folder_path = os.path.join(NETWORK_DRIVE_PATH, *folder_code.split('_'))

    # Check if folder exists
    if os.path.exists(folder_path):
        # Get all folder files uploaded by the student (across all folders)
        all_student_uploaded_files = FolderFile.objects.filter(folder_code=folder_code)

        # Build a dictionary: { folder_path: [file1, file2, ...] }
        student_files_map = {}
        for f in all_student_uploaded_files:
            folder_path = os.path.join(NETWORK_DRIVE_PATH, *f.folder_code.split('_'))
            student_files_map.setdefault(folder_path, []).append(f.file_name)


        # Traverse the whole network drive to calculate student's total file data
        for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
            # Optionally, count folders if they belong to the student's uploads
            if root in student_files_map:
                student_folders = StudentFolder.objects.filter(student_id=student_id).values_list("folder_id", flat=True).distinct()
                total_folders = student_folders.count()


            for file in files:
                # Check if this file is one the student uploaded in this folder
                if file in student_files_map.get(root, []):
                    file_path = os.path.join(root, file)
                    file_size = os.path.getsize(file_path)
                    total_size_bytes += file_size
                    total_files += 1

                    file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

                    if file_mod_time == today:
                        files_today += 1
                    if file_mod_time >= start_of_week:
                        files_this_week += 1
                    if file_mod_time >= start_of_month:
                        files_this_month += 1


                    latest_files.append({
                        "name": file,
                        "extension": os.path.splitext(file)[1],
                        "size_mb": round(file_size / (1024 ** 2), 2),
                        "folder": root.replace(NETWORK_DRIVE_PATH, "").strip("\\"),
                        "modified_time": datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).strftime("%Y-%m-%d %H:%M:%S"),
                    })


    # Sort latest files and get top 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]


    # Prepare file categorization
    files = {
        "texts": [],
        "pdfs": [],
        "images": [],
        "videos": []
    }

    if os.path.exists(folder_path):
        all_files = os.listdir(folder_path)

        for file in all_files:
            file_path = os.path.join(folder_path, file)
            uploaded_timestamp = os.path.getmtime(file_path)
            uploaded_datetime = datetime.datetime.fromtimestamp(uploaded_timestamp).strftime('%Y-%m-%d %H:%M:%S')

            # Check if the file exists in folder_files and if uploader_id matches the student_id
            file_record = next((f for f in all_folder_files if f.file_name == file ), None)

            if file_record:  # Proceed only if the file exists and uploader_id matches
                file_info = {
                    "file_id": file_record.file_id if file_record else "No ID",
                    "file_name": file_record.file_guide if file_record else "No name",
                    "file_description": file_record.file_description if file_record else "No description",
                    "file_link": file,
                    "uploaded_at": uploaded_datetime
                }

                if file.lower().endswith(PDF_EXTENSION):
                    files["pdfs"].append(file_info)
                elif file.lower().endswith(IMAGE_EXTENSIONS):
                    files["images"].append(file_info)
                elif file.lower().endswith(VIDEO_EXTENSIONS):
                    files["videos"].append(file_info)
                elif file.lower().endswith(TEXT_EXTENSION):
                    files["texts"].append(file_info)


    # Handle POST requests
    if request.method == "POST":
        try:
            if "change_fname" in request.POST:
                file_name = request.POST.get("file_name")
                file_id = request.POST.get("file_id")
                file_record = FolderFile.objects.filter(file_id=file_id).first()

                if file_record:
                    file_record.file_guide = file_name  # Update the field
                    file_record.save()  # Save the changes
                    messages.success(request, f"File name updated successfully.")
                    return redirect("view_folder_s", folder_code=folder_code)
                else:
                    messages.success(request, f"File record not found.")
                    return redirect("view_folder_s", folder_code=folder_code)

            else:
                file_links = request.FILES.getlist("file_link[]")  # Get list of files
                file_names = request.POST.getlist("file_name[]")  # Get list of file names
                file_descriptions = request.POST.getlist("file_description[]")  # Get list of descriptions

                if not file_links:
                    return JsonResponse({"error": "No files uploaded"}, status=400)

                for idx, file in enumerate(file_links):
                    # Get file details
                    file_name = file_names[idx] if idx < len(file_names) else file.name
                    file_description = file_descriptions[idx] if idx < len(file_descriptions) else ""

                    # Save the file
                    fs = FileSystemStorage(location=folder_path)
                    saved_file_name = fs.save(file.name, file)

                    # Store file in database (adjust based on your model)
                    FolderFile.objects.create(
                        folder_code=folder_code,
                        file_name=saved_file_name,
                        file_guide=file_name,
                        file_description=file_description,
                        file_link=os.path.join(folder_code, saved_file_name).replace("\\", "/"),
                        uploader_id=student_id,  # Ensure student_id is correctly retrieved
                    )

            return redirect("view_folder_s", folder_code=folder_code)

        except Exception as e:
            return JsonResponse({"error": "File upload failed", "details": str(e)}, status=500)

    
    user = UserAccount.objects.get(student_id=student_id)
    notification = user.get_storage_notification(round(total_size_bytes / (1024**2), 2))
    limit = user.get_storage_limit(round(total_size_bytes / (1024**2), 2))

    context = {
        "student_id": student_id,
        "full_name": full_name,
        "folder_files": all_folder_files,
        "folder_code": folder_code,
        "students": students,
        "shared_files": shared_files,
        "files": files,
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
        'grouped_folders': grouped_folders,
        'notification':notification if notification else f"✅ Storage usage is within limit. {round(total_size_bytes / (1024**2), 2)} / {user.mb_limit} MBs used",
        'limit': limit if limit else "no",
    }
    return render(request, "student/folder_contents.html", context)


def view_folder_f(request, folder_code):
    """ Faculty view of folder with file listing. """
    faculty_id = request.session.get("faculty_id")
    full_name = request.session.get("a_fullname")

    if not faculty_id:
        return redirect(reverse("faculty_login"))
    
    # Get folders matching exact folder_code or folder_code with underscore
    matching_folders = FolderTns.objects.filter(
        faculty_id=faculty_id
    ).filter(
        Q(unique_code__startswith=f"{folder_code}_")
    ).values('unique_code', 'folder_name', 'description', 'apicode')

    # Fetch student-linked folders from StudentFolderView using the same logic
    student_folders = get_immediate_faculty_subfolders(faculty_id=faculty_id, parent_code=folder_code)

    # Group student folders
    grouped_folders = {}
    for folder in student_folders:
        code = folder.unique_code
        if code not in grouped_folders:
            grouped_folders[code] = {
                'folder_name': folder.folder_name,
                'description': folder.description,
                'apicode': folder.apicode,
                'faculty_gsuite': folder.faculty_email,
                'students': []
            }
        students_in_folder = StudentFolderView.objects.filter(unique_code=code)

        for student in students_in_folder:
            grouped_folders[code]['students'].append({
                'student_id': student.sr_code,
                'first_name': student.student_first_name,
                'middle_name': student.student_middle_name,
                'last_name': student.student_last_name,
                'username': f"{student.sr_code}@g.batstate-u.edu.ph",
            })

    # Prepare subquery to identify student-linked folders
    student_subquery = StudentFolderView.objects.filter(
        faculty_id=faculty_id,
        unique_code=OuterRef('unique_code')
    ).values('unique_code')

    # Get folders with no students (empty folders)
    empty_folders = FacultyFoldersView.objects.filter(
        faculty_id=faculty_id,
        unique_code__in=[f['unique_code'] for f in matching_folders]
    ).exclude(
        unique_code__in=Subquery(student_subquery)
    ).values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_email')



    # Get faculty files
    folder_files1 = FileOfStudents.objects.filter(folder_code=folder_code)
    folder_files2 = FacultyFiles.objects.filter(folder_code=folder_code)
    students = StudentAccount.objects.all()
    shared_files = FilesShared.objects.filter(folder_code=folder_code)

    # Combine both folder files into one queryset
    all_folder_files = list(folder_files1) + list(folder_files2)
    
    # Get faculty file names for filtering
    faculty_file_names = [f.file_name for f in folder_files2]
    
    # Initialize counters
    total_size_bytes = 0
    f_files = FolderFile.objects.filter(uploader_id=faculty_id)
    total_files = f_files.count()
    total_folders = 0
    files_today = 0
    files_this_week = 0
    files_this_month = 0
    latest_files = []

    # Get current date info for filtering
    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month

    # Get folder path
    folder_path = os.path.join(NETWORK_DRIVE_PATH, *folder_code.split('_'))

    # Check if folder exists
    if os.path.exists(folder_path):
        # Get all files uploaded by this faculty member (all folders)
        faculty_uploaded_files = FolderFile.objects.filter(uploader_id=faculty_id)

    # Count total folders the faculty owns
        total_folders = FolderTns.objects.filter(faculty_id=faculty_id).count()

        # Loop through all uploaded files
        for file_obj in faculty_uploaded_files:
            # Build full file path
            folder_parts = file_obj.folder_code.split('_')
            file_path = os.path.join(NETWORK_DRIVE_PATH, *folder_parts, file_obj.file_name)

            if os.path.isfile(file_path):  # Make sure it's a file, not a directory
                file_size = os.path.getsize(file_path)
                total_size_bytes += file_size

                file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

                if file_mod_time == today:
                    files_today += 1
                if file_mod_time >= start_of_week:
                    files_this_week += 1
                if file_mod_time >= start_of_month:
                    files_this_month += 1


        # Sort by modification time (latest first) and get the latest 5
        latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]

    # Prepare file categorization
    files = {
        "pdfs": [],
        "images": [],
        "texts": [],
        "videos": []
    }

    # Process files in the specific folder
    if os.path.exists(folder_path):
        all_files = os.listdir(folder_path)

        for file in all_files:
            # Only process files associated with this faculty
            if file in faculty_file_names:
                file_path = os.path.join(folder_path, file)
                uploaded_timestamp = os.path.getmtime(file_path)
                uploaded_datetime = datetime.datetime.fromtimestamp(uploaded_timestamp).strftime('%Y-%m-%d %H:%M:%S')

                # Get file record
                file_record = next((f for f in all_folder_files if f.file_name == file), None)

                file_info = {
                    "file_id": file_record.file_id if file_record else "No ID",
                    "user_name": f"{file_record.first_name} {file_record.middle_name} {file_record.last_name}" if file_record else "No name",
                    "file_name": file_record.file_guide if file_record else "No name",
                    "file_description": file_record.file_description if file_record else "No description",
                    "file_link": file,
                    "uploaded_at": uploaded_datetime
                }
                print(file)
                # Sort files into categories
                if file.lower().endswith(PDF_EXTENSION):
                    files["pdfs"].append(file_info)
                elif file.lower().endswith(IMAGE_EXTENSIONS):
                    files["images"].append(file_info)
                elif file.lower().endswith(VIDEO_EXTENSIONS):
                    files["videos"].append(file_info)
                elif file.lower().endswith(TEXT_EXTENSION):
                    files["texts"].append(file_info)

    # Handle POST requests
    if request.method == "POST":
        try:
            if "create" in request.POST:
                folder_name = request.POST.get('folder_name', '').strip()
                description = request.POST.get('description', '').strip()
                apicode = request.POST.get('apicode', '').strip()

                if folder_name and description and apicode:
                    unique_code = get_random_string(10)  # Generate a unique code

                    FolderTns.objects.create(
                        folder_name=folder_name,
                        description=description,
                        unique_code=f"{folder_code}_{unique_code}",
                        apicode=unique_code,
                        faculty_id=faculty_id 
                    )

                    messages.success(request, "Folder created successfully!")
                    return redirect(reverse('view_folder_f', kwargs={'folder_code': f"{folder_code}_{unique_code}"}))  # Redirect to refresh the page

                else:
                    messages.error(request, "All fields are required!")
            elif "folder_code_delete" in request.POST:
                folder_code_d = request.POST.get("folder_code_delete")
                folder_whole = FolderTns.objects.filter(unique_code=folder_code_d).first()
                folder_whole.delete()
                messages.success(request, f"Folder Deleted successfully")

                return redirect("view_folder_f", folder_code=folder_code)
            elif "delete_file" in request.POST:
                file_name = request.POST.get("file_name")
                file_id = request.POST.get("file_id")
                print(f"{file_name} s")
                file_record = FolderFile.objects.filter(folder_code=folder_code, file_id=file_id).first()

                if file_record:
                    file_path = os.path.join(*folder_path.split('_'), file_name)

                    # Remove file from filesystem
                    if os.path.exists(file_path):
                        os.remove(file_path)
                        print(f"Deleted file: {file_path}")

                    # Remove record from database
                    file_record.delete()
                    messages.success(request, f"File Deleted successfully")

                    return redirect("view_folder_f", folder_code=folder_code)
                else:
                    return JsonResponse({"error": "File not found in database"}, status=404)
            elif "change_flname" in request.POST:
                file_name = request.POST.get("file_name")
                u_code = request.POST.get("u_code")
                file_record = FolderTns.objects.filter(unique_code=u_code).first()

                if file_record:
                    file_record.folder_name = file_name  # Update the field
                    file_record.save()  # Save the changes
                    messages.success(request, f"Folder name updated successfully.")
                    return redirect("view_folder_f", folder_code=folder_code)
                else:
                    messages.success(request, f"Folder record not found.")
                    return redirect("view_folder_f", folder_code=folder_code)

            elif "change_fname" in request.POST:
                file_name = request.POST.get("file_name")
                file_id = request.POST.get("file_id")
                file_record = FolderFile.objects.filter(file_id=file_id).first()

                if file_record:
                    file_record.file_guide = file_name  # Update the field
                    file_record.save()  # Save the changes
                    messages.success(request, f"File name updated successfully.")
                    return redirect("view_folder_f", folder_code=folder_code)
                else:
                    messages.success(request, f"File record not found.")
                    return redirect("view_folder_f", folder_code=folder_code)
            else:
                file_links = request.FILES.getlist("file_link[]")  # Get list of files
                file_names = request.POST.getlist("file_name[]")  # Get list of file names
                file_descriptions = request.POST.getlist("file_description[]")  # Get list of descriptions

                if not file_links:
                    return JsonResponse({"error": "No files uploaded"}, status=400)

                for idx, file in enumerate(file_links):
                    # Get file details
                    file_name = file_names[idx] if idx < len(file_names) else file.name
                    file_description = file_descriptions[idx] if idx < len(file_descriptions) else ""

                    # Save the file
                    fs = FileSystemStorage(location=folder_path)
                    saved_file_name = fs.save(file.name, file)

                    # Store file in database (adjust based on your model)
                    FolderFile.objects.create(
                        folder_code=folder_code,
                        file_name=saved_file_name,
                        file_guide=file_name,
                        file_description=file_description,
                        file_link=os.path.join(folder_code, saved_file_name).replace("\\", "/"),
                        uploader_id=faculty_id,  # Ensure faculty_id is correctly retrieved
                    )

            messages.success(request, f"File Uploaded successfully")
            return redirect("view_folder_f", folder_code=folder_code)

        except Exception as e:
            return JsonResponse({"error": "File operation failed", "details": str(e)}, status=500)

    user = UserAccount.objects.get(faculty_id=faculty_id)

    notification = user.get_storage_notification(round(total_size_bytes / (1024**2)))
    limit = user.get_storage_limit(round(total_size_bytes / (1024**2)))

    context = {
        "faculty_id": faculty_id,
        "full_name": full_name,
        "folder_files": folder_files1,
        "folder_code": folder_code,
        "students": students,
        "shared_files": shared_files,
        "files": files,
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
        'grouped_folders': grouped_folders,
        'empty_folders': empty_folders,
        'notification':notification if notification else f"✅ Storage usage is within limit. {round(total_size_bytes / (1024**2), 2)} / {user.mb_limit} MBs used",
        'limit': limit if limit else "no",
    }
    return render(request, "faculty/folder_contents.html", context)



def faculty_folders(request):
    faculty_id = request.session.get('faculty_id', None)
    full_name = request.session.get('a_fullname', None)
    log_action('admin', faculty_id, 'Viewed folders he/she created', request)

    if not faculty_id:
        return redirect(reverse('faculty_login'))  

    # Handle Folder Creation
    if request.method == "POST":
        if "create" in request.POST:
            folder_name = request.POST.get('folder_name', '').strip()
            description = request.POST.get('description', '').strip()
            apicode = request.POST.get('apicode', '').strip()

            if folder_name and description and apicode:
                unique_code = get_random_string(10)  # Generate a unique code

                FolderTns.objects.create(
                    folder_name=folder_name,
                    description=description,
                    unique_code=unique_code,
                    apicode=unique_code,
                    faculty_id=faculty_id 
                )

                messages.success(request, "Folder created successfully!")
                return redirect('faculty_folders')  # Redirect to refresh the page

            else:
                messages.error(request, "All fields are required!")
        elif "change_flname" in request.POST:
            file_name = request.POST.get("file_name")
            u_code = request.POST.get("u_code")
            file_record = FolderTns.objects.filter(unique_code=u_code).first()

            if file_record:
                file_record.folder_name = file_name  # Update the field
                file_record.save()  # Save the changes
                messages.success(request, f"Folder name updated successfully.")
                return redirect("faculty_folders")
            else:
                messages.success(request, f"Folder record not found.")
                return redirect("faculty_folders")
        else:
            if "folder_code_delete" in request.POST:
                folder_code = request.POST.get("folder_code_delete")
                folder_whole = FolderTns.objects.filter(unique_code=folder_code).first()
                folder_whole.delete()

    # Fetch folders linked to students
    student_folders = StudentFolderView.objects.filter(faculty_id=faculty_id).values(
        'unique_code', 'folder_name', 'description', 'apicode', 'faculty_gsuite', 
        'student_first_name', 'student_last_name'
    ).distinct().order_by('-id')

    # Group student-associated folders
    grouped_folders = {}
    for folder in student_folders:
        unique_code = folder['unique_code']
        if unique_code not in grouped_folders:
            grouped_folders[unique_code] = {
                'folder_name': folder['folder_name'],
                'description': folder['description'],
                'apicode': folder['apicode'],
                'faculty_gsuite': folder['faculty_gsuite'],
                'students': []
            }
        students_in_folder = StudentFolderView.objects.filter(unique_code=unique_code)

        for student in students_in_folder:
            grouped_folders[unique_code]['students'].append({
                'student_id': student.sr_code,
                'first_name': student.student_first_name,
                'middle_name': student.student_middle_name,
                'last_name': student.student_last_name,
                'username': f"{student.sr_code}@g.batstate-u.edu.ph",
            })

    # Fetch folders with no associated students
    student_folders_subquery = StudentFolderView.objects.filter(
        faculty_id=faculty_id, unique_code=OuterRef('unique_code')
    ).values('unique_code')

    empty_folders = FacultyFoldersView.objects.filter(
        faculty_id=faculty_id
    ).exclude(
        unique_code__in=Subquery(student_folders_subquery)
    ).values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_email')

    # Get all faculty files
    faculty_files = FolderFile.objects.filter(uploader_id=faculty_id)
    faculty_file_data = {f.file_name: f.folder_code for f in faculty_files}
    
    
    # Initialize counters
    total_size_bytes = 0
    total_files = len(faculty_files)
    total_folders = len(grouped_folders) + len(empty_folders)
    files_today = 0
    files_this_week = 0
    files_this_month = 0
    latest_files = []

    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())
    start_of_month = today.replace(day=1)

    # Traverse and compute stats
    for file_name, folder_code in faculty_file_data.items():
        folder_parts = folder_code.split('_')
        file_path = os.path.join(NETWORK_DRIVE_PATH, *folder_parts, file_name)

        if os.path.isfile(file_path):
            file_size = os.path.getsize(file_path)
            total_size_bytes += file_size

            file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path))
            file_mod_date = file_mod_time.date()

            if file_mod_date == today:
                files_today += 1
            if file_mod_date >= start_of_week:
                files_this_week += 1
            if file_mod_date >= start_of_month:
                files_this_month += 1

            file_ext = os.path.splitext(file_name)[1]
            latest_files.append({
                "name": file_name,
                "extension": file_ext,
                "size_mb": round(file_size / (1024 ** 2), 2),
                "folder": folder_code.replace('_', '/'),
                "modified_time": file_mod_time.strftime("%Y-%m-%d %H:%M:%S"),
            })

    # Sort by modification time (latest first) and get the latest 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]
    user = UserAccount.objects.get(faculty_id=faculty_id)
    notification = user.get_storage_notification(round(total_size_bytes / (1024**2), 2) )
    limit = user.get_storage_limit(round(total_size_bytes / (1024**2)))

    context = {
        'faculty_id': faculty_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders,
        'empty_folders': empty_folders,  # Pass folders without students
        "total_files": total_files,
        "total_size_mb": round(total_size_bytes / (1024**2), 2),  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2),  # Convert to GB
        "total_folders": total_folders,
        "files_today": files_today,
        "files_this_week": files_this_week,
        "files_this_month": files_this_month,
        "latest_files": latest_files,
        'notification': notification if notification else f"✅ Storage usage is within limit. {round(total_size_bytes / (1024**2), 2)} / {user.mb_limit} MBs used",
        'limit': limit if limit else "no",
    }

    return render(request, 'faculty/folders.html', context)


def student_folders(request):
    student_id = request.session.get('student_id', None)
    full_name = request.session.get('s_fullname', None)
    log_action('student', student_id, 'Viewed folders he/she is joined in', request)


    # If there is no student_id in the session, redirect to the student login page
    if not student_id:
        return redirect(reverse('student_login'))
    
    student_folders = StudentFolderView.objects.filter(sr_code=student_id) \
        .values('unique_code', 'folder_name', 'description', 'apicode', 'faculty_gsuite').order_by('-id')

    print(student_id)

    if request.method == "POST":
        unique_code = request.POST.get("unique_code")
        foldertns = FolderTns.objects.get(unique_code=unique_code)
        student_folder = StudentFolder.objects.create(
                student_id=student_id,
                folder=foldertns
        )
        student_folder.save()
        print(foldertns)
        return redirect('student_folder')

    # Group folders by unique_code
    grouped_folders = {}

    for folder in student_folders:
        unique_code = folder['unique_code']
        
        if unique_code not in grouped_folders:
            # Initialize folder group
            grouped_folders[unique_code] = {
                'folder_name': folder['folder_name'],
                'description': folder['description'],
                'faculty_gsuite': folder['faculty_gsuite'],
                'apicode': folder['apicode'],
                'students': []
            }

            # Fetch all students linked to the folder
            students_in_folder = StudentFolderView.objects.filter(unique_code=unique_code)

            for student in students_in_folder:
                grouped_folders[unique_code]['students'].append({
                    'student_id': student.sr_code,
                    'first_name': student.student_first_name,
                    'middle_name': student.student_middle_name,
                    'last_name': student.student_last_name,
                    'username': f"{student.sr_code}@g.batstate-u.edu.ph",
                })
    
    # Get all files uploaded by this student
    student_files = FolderFile.objects.filter(uploader_id=student_id)
    
    # Initialize counters
    total_size_bytes = 0
    total_files = 0
    total_folders = len(grouped_folders)  # Count student's folders
    files_today = 0
    files_this_week = 0
    files_this_month = 0
    latest_files = []

    # Get current date info for filtering
    today = datetime.date.today()
    start_of_week = today - datetime.timedelta(days=today.weekday())  # Monday of current week
    start_of_month = today.replace(day=1)  # First day of the current month
    
    # Get the list of file names for efficient checking
    student_file_names = [f.file_name for f in student_files]
    
    # Traverse all student's folders to gather statistics
    for folder_code in grouped_folders.keys():
        folder_path = os.path.join(NETWORK_DRIVE_PATH, *folder_code.split('_'))

    # Check if folder exists
        if os.path.exists(folder_path):
            # Get all folder files uploaded by the student (across all folders)
            all_student_uploaded_files = FolderFile.objects.filter(uploader_id=student_id)

            # Build a dictionary: { folder_path: [file1, file2, ...] }
            student_files_map = {}
            for f in all_student_uploaded_files:
                folder_path = os.path.join(NETWORK_DRIVE_PATH, *f.folder_code.split('_'))
                student_files_map.setdefault(folder_path, []).append(f.file_name)


            # Traverse the whole network drive to calculate student's total file data
            for root, dirs, files in os.walk(NETWORK_DRIVE_PATH):
                # Optionally, count folders if they belong to the student's uploads
                if root in student_files_map:
                    student_folders = StudentFolder.objects.filter(student_id=student_id).values_list("folder_id", flat=True).distinct()
                    total_folders = student_folders.count()


                for file in files:
                    # Check if this file is one the student uploaded in this folder
                    if file in student_files_map.get(root, []):
                        file_path = os.path.join(root, file)
                        file_size = os.path.getsize(file_path)
                        total_size_bytes += file_size
                        total_files += 1

                        file_mod_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).date()

                        if file_mod_time == today:
                            files_today += 1
                        if file_mod_time >= start_of_week:
                            files_this_week += 1
                        if file_mod_time >= start_of_month:
                            files_this_month += 1


                        latest_files.append({
                            "name": file,
                            "extension": os.path.splitext(file)[1],
                            "size_mb": round(file_size / (1024 ** 2), 2),
                            "folder": root.replace(NETWORK_DRIVE_PATH, "").strip("\\"),
                            "modified_time": datetime.datetime.fromtimestamp(os.path.getmtime(file_path)).strftime("%Y-%m-%d %H:%M:%S"),
                        })
    # Sort by modification time (latest first) and get the latest 5
    latest_files = sorted(latest_files, key=lambda x: x["modified_time"], reverse=True)[:5]

    user = UserAccount.objects.get(student_id=student_id)
    notification = user.get_storage_notification(round(total_size_bytes / (1024**2), 2) / 2)
    limit = user.get_storage_limit(round(total_size_bytes / (1024**2), 2))

    context = {
        'student_id': student_id,
        'full_name': full_name,
        'grouped_folders': grouped_folders,
        "total_files": int(total_files / 2),
        "total_size_mb": round(total_size_bytes / (1024**2), 2) / 2,  # Convert to MB
        "total_size_gb": round(total_size_bytes / (1024**3), 2) / 2,  # Convert to GB
        "total_folders": total_folders,
        "files_today": int(files_today / 2),
        "files_this_week": int(files_this_week / 2),
        "files_this_month": int(files_this_month / 2),
        "latest_files": latest_files,
        'notification':notification if notification else f"✅ Storage usage is within limit. {round(total_size_bytes / (1024**2), 2) / 2} / {user.mb_limit} MBs used",
        'limit': limit if limit else "no",
    }

    return render(request, 'student/folders.html', context)
