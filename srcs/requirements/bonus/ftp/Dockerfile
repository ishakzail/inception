FROM debian:latest

# Install the FTP server and other required packages
RUN apt-get update && apt-get install -y vsftpd

COPY /tools/script.sh /
RUN chmod +x script.sh
# Expose the FTP server's default port (21)
EXPOSE 21

# Start the FTP server when the container is launched
ENTRYPOINT ["./script.sh"]
# # Create a new user for the FTP server
# RUN useradd -m ftpuser

# # Set the password for the FTP user
# RUN echo "ftpuser:password" | chpasswd

# # Create a new directory for the FTP user's home directory
# RUN mkdir /home/ftpuser/ftp

# # Set the FTP user's home directory as the root directory for the FTP server
# RUN echo "local_root=/home/ftpuser/ftp" >> /etc/vsftpd.conf

# # Allow FTP connections from external clients
# RUN echo "listen=YES" >> /etc/vsftpd.conf
# RUN echo "listen_ipv6=YES" >> /etc/vsftpd.conf

# # Allow anonymous users to connect to the FTP server
# RUN echo "anonymous_enable=YES" >> /etc/vsftpd.conf