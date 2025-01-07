FROM ubuntu:22.04
RUN apt update
RUN apt install -y apache2
COPY web/index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND" ]