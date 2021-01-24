FROM debian:latest

MAINTAINER Technik Service Whitesheep <support@ts-ws.de>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install htop && \
    apt-get -y install apache2 php php-mysql
    
RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/log/apt

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

#AutomaticUpdateTimestamp:20210125000513
#ManualUpdateTimestamp:20201012113000
