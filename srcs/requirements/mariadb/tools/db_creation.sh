#! /bin/sh
# Database creation


    service mysql start    
    echo "Lanch DATABASE Creation";
    mysql -u root  -e "CREATE DATABASE test";
    mysql -u root  -e "CREATE USER ishak@'%' IDENTIFIED BY 'toor'";
    mysql -u root  -e "GRANT ALL PRIVILEGES ON test.* TO 'ishak'@'%'";
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';";
    mysql -u root -e "FLUSH PRIVILEGES;";

mysqld_safe;