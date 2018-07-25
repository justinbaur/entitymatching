FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install libpng-dev
RUN apt-get -y install qt5-default
RUN apt-get -y install qt5-qmake
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install python3-tk

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY starter.py ./
RUN pip3 install --no-cache-dir -r requirements.txt

# Test Installed Packages
RUN python3 starter.py
