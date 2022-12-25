FROM debian:buster

RUN apt-get update && \
    apt-get install -y \
    wget \
    unzip \
    curl
RUN apt-get install -y php7.3-fpm php7.3-mysql 
RUN mkdir -p /var/www/html
RUN wget http://wordpress.org/latest.tar.gz
RUN tar xfz latest.tar.gz &&  rm -rf latest.tar.gz
RUN mv wordpress/ /var/www/html/ 
RUN mv /var/www/html/wordpress/* ./var/www/html/ && rm -rf /var/www/html/wordpress
COPY /tools/script.sh /
COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY /conf/wp-config.php /var/www/html/wp-config.php
RUN chmod +x /script.sh

ENTRYPOINT [ "./script.sh" ]
# FROM debian:buster

# # update and install dependencies needed !!
# # RUN apt-get update &&\
# # 	apt-get install wget -y && \
# # 	apt-get install php-fpm php-mysql -y && \
# # 	apt-get upgrade -y
# RUN apt-get update && \
# 	apt-get install wget -y && \
# 	apt-get install php-fpm php-mysql -y



# # RUN    	apt-get install php7 php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl \ 
# # 		php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap \
# # 		php7-mbstring php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype \
# # 		php7-dom php7-opcache php7-zlib php7-session php7-intl php7-zip

# COPY /tools/script.sh /

# RUN chmod +x /script.sh

# ENTRYPOINT [ "/script.sh" ]