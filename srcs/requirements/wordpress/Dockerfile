FROM debian:buster

RUN apt-get update && \
    apt-get install -y \
        curl \
        sendmail
RUN apt-get install -y php7.3-fpm php7.3-mysql 
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY /tools/script.sh /
COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x script.sh

ENTRYPOINT [ "./script.sh" ]
# FROM debian:buster

# RUN apt-get update && \
#     apt-get install -y \
#     wget \
#     unzip \
#     curl
# RUN apt-get install -y php7.3-fpm php7.3-mysql 
# RUN mkdir -p /var/www/html
# RUN wget http://wordpress.org/latest.tar.gz
# RUN tar xfz latest.tar.gz &&  rm -rf latest.tar.gz
# RUN mv wordpress/ /var/www/html/ 
# RUN mv /var/www/html/wordpress/* ./var/www/html/ && rm -rf /var/www/html/wordpress
# COPY /tools/script.sh /
# COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/
# COPY /conf/wp-config.php /var/www/html/wp-config.php
# RUN chmod +x /script.sh

# ENTRYPOINT [ "./script.sh" ]