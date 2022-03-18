FROM alpine:3.15
RUN apk add apache2
COPY index.html /var/www/localhost/htdocs/
RUN /sbin/ip address >> /var/www/localhost/htdocs/index.html
#RUN echo "<center><h1>Hello from ECS</h1><br><h2>Demo3 Terraform<h2><br>$HOSTNAME" > /var/www/localhost/htdocs/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
