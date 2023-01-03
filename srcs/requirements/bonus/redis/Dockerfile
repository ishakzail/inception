FROM debian:buster

RUN apt-get update && apt-get install -y \
    redis-server

RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/redis/redis.conf
COPY ./tools/script.sh /
RUN chmod +x script.sh
EXPOSE 6379
ENTRYPOINT [ "/bin/sh", "script.sh" ]
# ENTRYPOINT ["./script.sh"]
# ENTRYPOINT redis-server --protected-mode no
# CMD redis-server --protected-mode no