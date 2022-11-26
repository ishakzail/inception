#! /bin/bash
# Database creation 
    service mysql start
# if ! ls /var/lib/mysql/*; then
    echo "Lanch DATABASE Creation";
    mysql -u root  -e "CREATE DATABASE IF NOT EXISTS izail_db";
    mysql -u root  -e "CREATE USER IF NOT EXISTS 'ishak'@'%' IDENTIFIED BY 'toor'";
    mysql -u root  -e "GRANT ALL PRIVILEGES ON *.* TO 'ishak'@'%'";
    mysql -u root -e "FLUSH PRIVILEGES";
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor1'";
    mysql -u root -e "FLUSH PRIVILEGES";
# fi

kill `cat /var/run/mysqld/mysqld.pid`

mysqld_safe;