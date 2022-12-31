#!/bin/bash

cd /var/www/html && rm -rf *
wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php
chown -R www-data:www-data /var/www/html/index.php
chmod 755 /var/www/html/index.php
echo "ServerName localhost" >> /etc/apache2/apache2.conf
service apache2 restart
# apachectl -D FOREGROUND