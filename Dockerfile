FROM ubuntu:18.04
MAINTAINER "madhav@evoke.com"
RUN apt-get update
RUN apt-get install nginx -y
ENV Host madhav
COPY index.html home/ubuntu/CNGINX/var/www/html/
ENTRYPOINT service nginx restart && bash
EXPOSE 83/tcp
WORKDIR home/ubuntu/CNGINX/var/www/html/
VOLUME home/ubuntu/CNGINX/var/www/html/
