FROM ubuntu:latest
RUN  apt-get update && apt-get install -y apache2
Run systemctl start apache2
WORKDIR /var/www/html
RUN rm -rf index.html
COPY index.html /var/www/html
CMD  ["apache2," "-D","FOREGROUND"]
EXPOSE 80


