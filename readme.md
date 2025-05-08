# Django Project README

## Overview
This is a Django-based web application that includes user authentication, file storage, email notifications, logging, and cryptographic security features. The project uses Django's core functionalities along with cryptography and database optimizations.

## Features
- **User Authentication**: Secure login and authentication using Django's built-in authentication system.
- **File Management**: Uploading, storing, and sharing files with students and faculty.
- **Logging System**: Tracks admin and student activities.
- **Email Notifications**: Sends automated emails for account verification and notifications.
- **Secure Data Handling**: Uses cryptographic techniques for secure file handling.
- **Database Optimization**: Uses Django ORM with `Prefetch`, `Q`, `OuterRef`, `Subquery`, and `Exists` for efficient querying.

---

## Installation

### Prerequisites
Ensure you have the following installed:
- Python 3.x
- Django
- Pip
- MySQL or SQLite (Database)
- Virtual environment (recommended)

### Setup Instructions
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo.git
   cd your-repo
   ```

2. Create and activate a virtual environment:
   ```sh
   python -m venv venv
   source venv/bin/activate  # Mac/Linux
   venv\Scripts\activate  # Windows
   ```

3. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```

4. Apply migrations:
   ```sh
   python manage.py migrate
   ```

5. Create a superuser:
   ```sh
   python manage.py createsuperuser
   ```

6. Run the development server:
   ```sh
   python manage.py runserver
   ```

---

## Project Structure

### Core Django Imports
The project uses core Django functionalities:
```python
from django.db import connection  # For raw SQL queries
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login
from django.contrib import messages
from django.contrib.auth.hashers import check_password
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from django.http import JsonResponse, FileResponse, HttpRequest
from django.urls import reverse
from django.core.mail import send_mail
from django.utils.timezone import now
from django.utils.crypto import get_random_string
```

### Models
```python
from .models import (
    AdminLogs, StudentLogs, FilesShared, SharedFilesView,
    FacultyAccount, StudentFolderView, FacultyAdminLogs,
    StudentActivityLogs, StudentAccount, UserAccount,
    FolderTns, FacultyFoldersView, StudentFolder, FolderFile
)
```

### Forms
```python
from .forms import MyForm
```

### ORM Query Optimizations
```python
from django.db.models import Prefetch, Q, OuterRef, Subquery, Exists
```

### Cryptography for Secure Data Handling
```python
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.backends import default_backend
```

### Python Standard Library Imports
```python
import os
import base64
import random
import datetime
```

---

## Usage
### File Uploads
- Files are stored using `FileSystemStorage`.
- Users can upload, download, and share files securely.

### User Authentication
- Uses Django's `login()` method for authentication.
- Passwords are hashed using `check_password()`.

### Database Queries
- Uses raw SQL queries and Django ORM for efficient data retrieval.

### Security
- Implements AES encryption for secure file storage.
- Uses PBKDF2HMAC for password-based key derivation.

---

## License
This project is open-source and available under the [MIT License](LICENSE).

---

## Contact
For any questions, feel free to contact the project maintainers:
- **Your Name** - [your-email@example.com]
- **GitHub** - [https://github.com/your-profile]

---

## Contribution Guidelines
Contributions are welcome! Follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Submit a pull request.

Happy coding! 🚀

