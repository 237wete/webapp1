FROM ubuntu
MAINTAINER WETE NIDJO (wetearnauld265@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx git
RUN rm -rf /var/www/html/*
EXPOSE 80
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/

#ADD site/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
