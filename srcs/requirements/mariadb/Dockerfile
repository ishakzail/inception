FROM ubuntu:20.04
LABEL description="MariaDB server"

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./tools /var/www

RUN service mysql start && mysql < /var/www/create_db.sql && rm -f /var/www/create_db.sql;

CMD ["mysqld"]



