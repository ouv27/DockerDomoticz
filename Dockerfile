FROM debian:stretch
MAINTAINER Ouv27 <smo270970@hotmail.com> #Original creator of this Dockerfile
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


ENV MKDOMOTICZ_UPDATE 20170628

# install packages
RUN apt-get update && apt-get install -y \
	git \
	libssl1.0.2 libssl-dev \
	build-essential cmake \
	libboost-all-dev \
	libsqlite3-0 libsqlite3-dev \
	curl libcurl3 libcurl4-openssl-dev \
	libusb-0.1-4 libusb-dev \
	zlib1g-dev \
	libudev-dev \
	python3-dev python3-pip \
