FROM debian:buster

RUN apt-get update && \
    apt-get install nginx -y && \
    apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=MA/ST=KHOURIBGA/L=Kkouribga/O=1337/OU=Izail/CN=Inception"

COPY ./conf/default /etc/nginx/sites-available/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]