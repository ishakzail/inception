FROM debian:buster

RUN apt-get update && \
    apt-get install mariadb-server -y

EXPOSE 3306

COPY ./tools/db_creation.sh /
# COPY ./tools/create_db.sql /

RUN chmod +x /db_creation.sh


# RUN service mysql start && mysql -u root < /create_db.sql

COPY ./conf/config_mariadb.cnf /etc/mysql/mariadb.conf.d/config_maridadb.cnf
 
ENTRYPOINT ["/db_creation.sh"]
# ENTRYPOINT ["mysqld"]

# ENTRYPOINT tail -f >/dev/null
