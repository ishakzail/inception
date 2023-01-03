FROM debian:latest

# Install the FTP server and other required packages
RUN apt-get update && apt-get install -y vsftpd

COPY /tools/script.sh /

# COPY /conf/vsftpd.conf /etc/vsftpd.conf
# Expose the FTP server's default port (21)
EXPOSE 21

ENTRYPOINT ["sh","script.sh"]
