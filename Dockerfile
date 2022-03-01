FROM ubuntu
RUN apt-get update -y
RUN apt-get install dnsutils -y
RUN apt-get install -y apache2 apache2-utils 
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
COPY ./index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
