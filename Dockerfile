#Author: Michael Harrison
#Purpose: Showing how to create a docker image and manually install nginx. 

#Pulls the base Ubuntu Image from Docker Hub
From ubuntu

#Lets install NGINX
RUN apt-get -y update && apt -y install nginx
RUN apt-get -y install php php-cli php-fpm

#Lets copy the local index.html to /tmp
#COPY index.html /tmp/index.html
COPY default /etc/nginx/sites-available/default

COPY  s3bkn  /tmp/

#lets expose port 80
EXPOSE 80/tcp
CMD service php7.4-fpm start && service nginx start && tail -f /dev/null

#CMD /usr/sbin/nginx && tail -f /dev/null
