# E-Notice Board System

A comprehensive web-based notice board management system built with PHP, MySQL, and modern web technologies. This system allows administrators to manage and display notices efficiently for educational institutions or organizations.

## 🚀 Features

### Admin Panel
- **Notice Management**: Create, edit, and delete notices
- **File Uploads**: Support for PDF, images, and video files
- **User Management**: Admin authentication and session management
- **Dashboard**: Overview of all notices and system statistics

### Public Interface
- **Notice Display**: Clean and responsive notice viewing
- **Search & Filter**: Find notices by category or date
- **File Downloads**: Secure file access control
- **Mobile Responsive**: Works on all devices

## 🏗️ Project Structure

```
E-Notice-Board/
├── src/                    # PHP source files
│   ├── index.php          # Main public interface
│   ├── admin.php          # Admin dashboard
│   ├── login.php          # Admin login
│   ├── logout.php         # Logout functionality
│   ├── public.php         # Public notice display
│   ├── upload_handler.php # File upload processing
│   └── db.php             # Database configuration
├── public/                 # Public accessible files
│   └── uploads/           # User uploaded files
├── assets/                 # Static assets
│   ├── *.css              # Stylesheets
│   └── *.js               # JavaScript files
├── config/                 # Configuration files
├── docs/                   # Documentation
├── tests/                  # Test files
├── .gitignore             # Git ignore rules
└── README.md              # Project documentation
```

## 🛠️ Technologies Used

### Backend
- **PHP 7.4+**: Server-side scripting
- **MySQL**: Database management
- **Session Management**: User authentication

### Frontend
- **HTML5**: Semantic markup
- **CSS3**: Modern styling with responsive design
- **JavaScript**: Interactive features
- **Bootstrap**: UI framework (if applicable)

### Security Features
- **SQL Injection Prevention**: Prepared statements
- **XSS Protection**: Input sanitization
- **File Upload Security**: Type and size validation
- **Session Security**: Secure session management

## 📋 Requirements

### Server Requirements
- PHP 7.4 or higher
- MySQL 5.6 or higher
- Apache/Nginx web server
- File upload permissions

### PHP Extensions
- MySQLi or PDO
- GD Library (for image processing)
- Fileinfo extension
- Session support

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/IH-Arik/E-Notice-Board.git
cd E-Notice-Board
```

### 2. Database Setup
```sql
CREATE DATABASE notice_board;
USE notice_board;

-- Create notices table
CREATE TABLE notices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    file_path VARCHAR(255),
    file_type VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status ENUM('active', 'inactive') DEFAULT 'active'
);

-- Create admin table
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 3. Configuration
1. Update database credentials in `src/db.php`
2. Set appropriate file permissions for `public/uploads/`
3. Configure web server to point to the project root

### 4. Web Server Configuration

#### Apache (.htaccess)
```apache
RewriteEngine On
RewriteRule ^uploads/(.*)$ public/uploads/$1 [L]
RewriteRule ^assets/(.*)$ assets/$1 [L]
```

#### Nginx
```nginx
location /uploads/ {
    alias /path/to/project/public/uploads/;
}
location /assets/ {
    alias /path/to/project/assets/;
}
```

## 📖 Usage

### Admin Access
1. Navigate to `/src/login.php`
2. Enter admin credentials
3. Access dashboard at `/src/admin.php`

### Public Access
- Main notice board: `/src/index.php`
- Public notices: `/src/public.php`

## 🔧 Configuration Options

### Database Configuration (`src/db.php`)
```php
define('DB_HOST', 'localhost');
define('DB_USER', 'username');
define('DB_PASS', 'password');
define('DB_NAME', 'notice_board');
```

### File Upload Settings
- Maximum file size: 10MB
- Allowed formats: PDF, JPG, PNG, MP4
- Upload directory: `public/uploads/`

## 🧪 Testing

### Running Tests
```bash
# If using PHPUnit
composer install --dev
php vendor/bin/phpunit tests/
```

### Manual Testing
1. Test admin login functionality
2. Test notice creation and display
3. Test file upload and download
4. Test responsive design on mobile devices

## 🔒 Security Considerations

### Implemented Security Measures
- **Input Validation**: All user inputs are sanitized
- **SQL Injection**: Using prepared statements
- **File Upload**: MIME type and size validation
- **Session Security**: Secure session configuration
- **XSS Protection**: Output escaping

### Recommended Security Practices
- Change default admin credentials
- Use HTTPS in production
- Regular database backups
- Keep PHP and server updated
- Monitor upload directory for malicious files

## 📊 Features in Detail

### Notice Management
- Create notices with rich text content
- Attach files (PDF, images, videos)
- Categorize notices
- Set notice priority
- Schedule notice publishing

### User Interface
- Clean and intuitive admin dashboard
- Responsive public notice board
- Search and filter functionality
- Pagination for large notice lists
- Print-friendly notice views

### File Management
- Secure file upload system
- File type validation
- Size limit enforcement
- Organized file storage
- Download tracking

## 🚀 Deployment

### Production Deployment
1. Set up production database
2. Configure environment variables
3. Set proper file permissions
4. Enable HTTPS
5. Set up regular backups
6. Monitor system logs

### Docker Deployment (Optional)
```dockerfile
FROM php:7.4-apache
COPY . /var/www/html/
RUN docker-php-ext-install mysqli
EXPOSE 80
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support and queries:
- Create an issue on GitHub
- Email: [your-email@example.com]

## 🔮 Future Enhancements

- [ ] Email notification system
- [ ] Notice categorization system
- [ ] Advanced search functionality
- [ ] Multi-language support
- [ ] API integration
- [ ] Mobile app development
- [ ] Cloud storage integration
- [ ] Analytics dashboard

## 📈 Performance Optimization

- Database indexing for faster queries
- Image optimization for faster loading
- Caching implementation
- CDN integration for static assets
- Database query optimization

---

⭐ If you find this project useful, please give it a star!
