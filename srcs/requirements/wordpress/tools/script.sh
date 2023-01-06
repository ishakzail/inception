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

wp core install --url=izail.42.fr --title=Example --admin_user=ishak --admin_password=123456 --admin_email=izail@gmail.com --allow-root
wp user create izail user@gmail.com --role=author --user_pass=123456 --allow-root 

# the file /var/run/php/ will be created automatically when you run php service
service php7.3-fpm start
wp plugin install redis-cache  --activate --allow-root 
wp redis enable  --allow-root
service php7.3-fpm stop


php-fpm7.3 -F