FROM debian:buster
LABEL description="MariaDB server"

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./tools/create_db.sql /tmp/

RUN service mysql start && mysql -u root < /tmp/create_db.sql

COPY ./conf/config_mariadb.cnf /etc/mysql/mariadb.conf.d/config_maridadb.cnf

CMD ["mysqld"]


