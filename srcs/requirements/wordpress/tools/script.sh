#!/bin/bash

# Configure WordPress
cd /var/www/html/
wp core download --allow-root
rm -rf /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

wp config create --dbname=$DB_NAME --dbuser=$DB_USER_NAME --dbpass=$DB_USER_PASS --dbhost=$HOST --allow-root --skip-check --extra-php <<PHP
define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');
define( 'WP_REDIS_PORT', 6379 );
define( 'WP_REDIS_TIMEOUT', 1 );
define( 'WP_REDIS_READ_TIMEOUT', 1 );
define( 'WP_REDIS_DATABASE', 0 );
PHP

wp core install --url=$WP_URL --title=Inception --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER_NAME $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASS --allow-root 
# the file /var/run/php/ will be created automatically when you run php service
service php7.3-fpm start
wp plugin install redis-cache  --activate --allow-root 
wp redis enable  --allow-root
service php7.3-fpm stop

chown -R www-data:www-data -f /var/www/html

php-fpm7.3 -F