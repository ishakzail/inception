FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./tools/db_creation.sh db_creation.sh

RUN chmod +x db_creation.sh

# RUN service mysql start && mysql -u root < /tmp/create_db.sql

COPY ./conf/config_mariadb.cnf /etc/mysql/mariadb.conf.d/config_maridadb.cnf
 
ENTRYPOINT ["/bin/bash", "db_creation.sh"]

# ENTRYPOINT tail -f >/dev/null

