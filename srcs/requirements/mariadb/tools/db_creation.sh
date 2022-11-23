# Database creation
# If /root/.my.cnf exists then it won't ask for root password


if ! /var/lib/mysql/* ; then

    mysql -u root  -e "CREATE DATABASE $DB_NAME";
    mysql -u root  -e "CREATE USER $DB_USER_NAME@'%' IDENTIFIED BY '$DB_USER_PASS'";
    mysql -u root  -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER_NAME'@'%'";
    mysql -u root -e "FLUSH PRIVILEGES;";
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ADMIN_PASS';";
fi