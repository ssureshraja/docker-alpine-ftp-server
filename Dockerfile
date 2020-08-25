FROM alpine:3.10
RUN apk --no-cache add vsftpd

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 21 33000 33001 33002 33003 33004 33005 33006 33007 33008 33009 33010
VOLUME /ftp/ftp

ENTRYPOINT ["/bin/start_vsftpd.sh"]

