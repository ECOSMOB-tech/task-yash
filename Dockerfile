FROM ubuntu 
RUN apt-get update 
RUN apt-get install apache2 -y 
RUN apt-get install apache2-utils -y 
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* 
EXPOSE 80 
ENTRYPOINT ["apache2ctl"] 
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"] 
