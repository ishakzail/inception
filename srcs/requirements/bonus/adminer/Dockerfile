FROM debian:buster

RUN apt update -y;  apt upgrade -y; apt install apache2 wget php libapache2-mod-php php-mysql -y; cd /var/www/html; rm -rf *;\
    wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql-en.php -O index.php;\
    sed -i  's/80/8080/g' /etc/apache2/ports.conf; service apache2 restart
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["apachectl", "-D", "FOREGROUND"]

# FROM debian:buster

# RUN apt-get update  \
#     && apt-get upgrade -y \
#     && apt-get install wget -y \
#     && apt-get install apache2 -y \
#     && apt-get install php -y  \
#     && apt-get install php-mysql -y
# COPY ./tools/script.sh /
# COPY ./conf/ports.conf /etc/apache2/ports.conf
# EXPOSE 8080
# ENTRYPOINT [ "/bin/sh", "script.sh" ]