#asterisk docker file for unraid 6
FROM phusion/baseimage:0.9.15
MAINTAINER marc brown <marc@22walker.co.uk> v0.3.2

## Set working directory
WORKDIR /opt

## Install prerequisites
RUN apt-get upadte && apt-get install -y python git-core

## Install Couchpotato
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git

## Expose port
EXPOSE 5050

## Run Couchpotato
ENTRYPOINT ["python", "CouchPotatoServer/CouchPotato.py"]
