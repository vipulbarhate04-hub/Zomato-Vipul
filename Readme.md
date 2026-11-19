
# 🍔 Online Food Ordering System

An Online Food Ordering System developed using PHP, MySQL, HTML, CSS, and JavaScript. This project allows customers to explore food items, view menus, and place food orders through a simple and user-friendly website.

## 🌐 Live Demo

**Visit Website:**  
https://vipul.freedev.app/index.php

## 📌 About the Project

The Online Food Ordering System is a web-based application designed to make food ordering easier and faster. Customers can browse available food items, select their favorite dishes, and place orders online.

The system provides a simple interface for customers and helps manage food ordering operations efficiently.

## ✨ Features

- User-friendly website interface
- Browse available food items
- View food menus and details
- Add food items to cart
- Place food orders
- User registration and login
- Manage customer orders
- Database connectivity using MySQL
- Responsive website design

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| HTML5 | Website structure |
| CSS3 | Website styling |
| JavaScript | Client-side functionality |
| PHP | Backend development |
| MySQL | Database management |
| XAMPP | Local development server |
| InfinityFree | Website hosting |

## 📂 Project Structure

```text
Online-Food-Ordering-System/
│
├── index.php
├── connect.php
├── login.php
├── register.php
├── css/
├── js/
├── images/
├── admin/
├── user/
└── database/
```

*Note: Update this structure according to your actual project folders and filenames.*

## ⚙️ Installation and Setup

Follow these steps to run the project locally.

### 1. Install XAMPP

Download and install XAMPP.

https://www.apachefriends.org/

### 2. Clone the Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 3. Move Project Folder

Copy the project folder into:

```text
C:\xampp\htdocs\
```

### 4. Start XAMPP

Open XAMPP Control Panel and start:

- Apache
- MySQL

### 5. Create Database

1. Open http://localhost/phpmyadmin
2. Create a new database.
3. Import your project's `.sql` database file.
4. Update database credentials in `connect.php`.

Example:

```php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "your_database_name";
```

### 6. Run the Project

Open your browser and visit:

```text
http://localhost/Online-Food-Ordering-System/
```

## 🖼️ Screenshots

Add your project screenshots in the `screenshots` folder.

Example:

```markdown
![Home Page](screenshots/homepage.png)
![Food Menu](screenshots/menu.png)
![Login Page](screenshots/login.png)
```

## 🚀 Deployment

The project is deployed using InfinityFree hosting.

**Live Website:**  
https://vipul.freedev.app/index.php

## 🎯 Project Objective

The main objective of this project is to develop an easy-to-use online food ordering platform that allows customers to browse food items and order food online.

## 🔮 Future Improvements

- Online payment integration
- Real-time order tracking
- Email notifications
- Restaurant ratings and reviews
- Improved mobile responsiveness
- Order history and management

## 👨‍💻 Developer

**Developed by:** Vipul Barayhe

## 📄 License

This project is created for educational and learning purposes.
