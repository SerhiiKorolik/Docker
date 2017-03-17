FROM mrkorolik/balancer:apache

RUN rm -rf /etc/httpd/conf/httpd.conf
ADD httpd.conf /etc/httpd/conf/httpd.conf

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
