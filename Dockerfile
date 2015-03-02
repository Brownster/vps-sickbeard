#Dockerfile
FROM phusion/baseimage:0.9.15
MAINTAINER marc brown <marc@22walker.co.uk> v0.0.1

EXPOSE 8081





RUN apt-get -q update && apt-get install -qy --force-yes git-core python-cheetah python-openssl

RUN git clone https://github.com/midgetspy/Sick-Beard.git sickbeard
