#!/bin/bash

# Configure WordPress
echo "name ==";
echo $DB_NAME;
echo "Here";

wp core download --path=/var/www/html --allow-root
rm -rf /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html
wp config create --dbname=$DB_NAME --dbuser=$DB_USER_NAME --dbpass=$DB_USER_PASS --dbhost=$HOST --path=/var/www/html/ --allow-root --skip-check --extra-php

wp core install --url=izail.42.fr --title=Example --admin_user=ishak --admin_password=123456 --admin_email=izail@gmail.com --path=/var/www/html/ --allow-root
wp user create izail user@gmail.com --role=author --user_pass=123456 --allow-root --path=/var/www/html/

# the file /var/run/php/ will be created automatically when you run php service
service php7.3-fpm start
service php7.3-fpm stop
# tail -f /dev/null
# /usr/sbin/php-fpm;
php-fpm7.3 -F