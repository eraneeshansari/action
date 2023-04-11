FROM ubuntu:16.04
MAINTAINER ANEESH
ENV DEBIAN_FRONTEND noninteractive    #disable TZ data
RUN apt update
RUN apt install apache2 wget unzip -y
RUN echo "<h1>This is web app from GitHub Actions</h1>" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
WORKDIR /var/www/html/
