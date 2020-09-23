FROM centos:latest

LABEL maintainer="juanmanuel12.13jmyh81@gmail.com"
LABEL maintainerName="Juan Manuel Young Hoyos"

RUN yum -y install httpd

WORKDIR /var/www/html

COPY . /var/www/html

CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]

EXPOSE 80