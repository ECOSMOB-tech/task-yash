FROM ubuntu <br>
RUN apt-get update <br>
RUN apt-get install apache2 -y <br>
RUN apt-get install apache2-utils -y <br>
RUN apt-get clean <br>
RUN rm -rf /var/lib/apt/lists/* <br>
EXPOSE 80 <br>
ENTRYPOINT ["apache2ctl"] <br>
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"] <br>
