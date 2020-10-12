#ManuelUpdate: 20201012-113000
#AutomaticUpdate: 20201012-113000

MAINTAINER Technik Service Whitesheep <support@ts-ws.de>

FROM debian:latest

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install htop && \
    apt-get -y install apache2 php php-mysql

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]
