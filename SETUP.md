# Online Marriage Registration System

A web-based application for managing marriage registrations with separate admin and user interfaces.

## Features

- **User Portal**: Marriage registration, application status tracking, profile management
- **Admin Portal**: Application management, verification, reporting, user management
- **Database Management**: MySQL database with complete CRUD operations
- **Responsive Design**: Bootstrap-based responsive UI

## Prerequisites

Before running this project, ensure you have:
- XAMPP (or any LAMP/WAMP stack)
- Web browser
- Text editor (optional, for modifications)

## Installation & Setup

### Step 1: Install XAMPP

1. **Download and Install XAMPP**:
   - Go to https://www.apachefriends.org/
   - Download XAMPP for Windows
   - Install it (typically in `C:\xampp\`)

2. **Start Services**:
   - Open XAMPP Control Panel
   - Start **Apache** and **MySQL** services
   - Ensure both services show "Running" status

### Step 2: Copy Project Files

1. Copy the entire project folder to XAMPP's htdocs directory:
   ```
   C:\xampp\htdocs\marriage-system\
   ```

### Step 3: Database Setup

1. **Access phpMyAdmin**:
   - Open your web browser
   - Go to: `http://localhost/phpmyadmin`

2. **Create Database**:
   - Click "New" in the left sidebar
   - Database name: `marriage`
   - Click "Create"

3. **Import Database**:
   - Select the `marriage` database
   - Click "Import" tab
   - Choose file: `marriage.sql` (from project root)
   - Click "Import"

### Step 4: Database Configuration

The database connection settings are already configured in:
- `admin/includes/dbconnection.php`
- `user/includes/dbconnection.php`

Default settings:
```php
DB_HOST: localhost
DB_USER: root
DB_PASS: (empty)
DB_NAME: marriage
```

## Running the Project

### Access the Application

1. **Main Homepage**:
   ```
   http://localhost/marriage-system/
   ```

2. **Admin Panel**:
   ```
   http://localhost/marriage-system/admin/
   ```
   - Default credentials:
     - Username: `admin`
     - Password: `Admin@12345`

3. **User Panel**:
   ```
   http://localhost/marriage-system/user/
   ```
   - Users need to register first

## Technologies Used

- **Frontend**: HTML5, CSS3, Bootstrap, JavaScript, jQuery
- **Backend**: PHP
- **Database**: MySQL
- **Server**: Apache (via XAMPP)
