#! /bin/bash
# Database creation 
    service mysql start
    # service mysql stop
# if ! ls /var/lib/mysql/*; then
    echo "Lanch DATABASE Creation";
    # mysql -u root  -e "CREATE DATABASE IF NOT EXISTS izail_db";
    # mysql -u root  -e "CREATE USER IF NOT EXISTS 'ishak'@'%' IDENTIFIED BY 'toor'";
    # mysql -u root  -e "GRANT ALL PRIVILEGES ON izail_db.* TO 'ishak'@'%' WITH GRANT OPTION";
    # mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor1'";
    # mysql -u root -e "FLUSH PRIVILEGES";
# fi

    # service mysql stop

# kill `cat /var/run/mysqld/mysqld.pid`

mysqld;