#Dockerfile to create nginx-server
#This is a sample Image 
FROM ubuntu:latest 
MAINTAINER manju.pothalappa@ecosmob.com 

RUN apt-get update 
RUN apt-get install –y nginx 
EXPOSE 80
CMD [“echo”,”Image created”] 
