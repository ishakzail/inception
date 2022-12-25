#!/bin/bash

# Download and extract WordPress
# mkdir -p /var/www/html/
# cd /var/www/html/ && wget https://wordpress.org/latest.tar.gz
# tar -xzf latest.tar.gz
# rm latest.tar.gz
# # cp -R wordpress /var/www/html/
# chown -R www-data:www-data /var/www/html/wordpress/
# chmod -R 755 /var/www/html/wordpress/
# mv /var/www/html/wordpress/* ./ && rm -rf wordpress




# mkdir /var/www/html/wordpress/wp-content/uploads
# chown -R www-data:www-data /var/www/html/wordpress/wp-content/uploads/

#Create a MySQL database and user for WordPress
# mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress";
# mysql -u root -e "CREATE USER  IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'password'";
# mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%'";
# mysql -u root -e "FLUSH PRIVILEGES";

# Configure WordPress
rm -rf /var/www/html/wp-config-sample.php 

sed -i "s/database_name_here/wordpress/g" /var/www/html/wp-config.php
sed -i "s/username_here/izail/g" /var/www/html/wp-config.php
sed -i "s/password_here/izail1337/g" /var/www/html/wp-config.php
sed -i "s/localhost/mariadb/g" /var/www/html/wp-config.php
service php7.3-fpm start
service php7.3-fpm stop
# tail -f /dev/null
# /usr/sbin/php-fpm;
php-fpm7.3 -F
# service php7.3-fpm start