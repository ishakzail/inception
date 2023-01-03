#!/bin/bash

useradd -u 3434 -g users -d /home/$F_USER_NAME -s /bin/bash -p $(echo $F_USER_PASSWORD | openssl passwd -1 -stdin) $F_USER_NAME
mkdir -p /home/$F_USER_NAME/ftp
chown -R $F_USER_NAME: /home/$F_USER_NAME;
mkdir -p /home/$F_USER_NAME/ftp/files
echo "local_enable=YES" >> /etc/vsftpd.conf
echo "write_enable=YES" >> /etc/vsftpd.conf
echo "chroot_local_user=YES" >> /etc/vsftpd.conf
echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf
echo "pasv_enable=YES" >> /etc/vsftpd.conf
echo "pasv_min_port=40000" >> /etc/vsftpd.conf
echo "pasv_max_port=40005" >> /etc/vsftpd.conf
echo "userlist_enable=YES" >> /etc/vsftpd.conf
echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
echo "userlist_deny=NO" >> /etc/vsftpd.conf
echo "secure_chroot_dir=/home/$F_USER_NAME/ftp" >> /etc/vsftpd.conf
/usr/sbin/vsftpd