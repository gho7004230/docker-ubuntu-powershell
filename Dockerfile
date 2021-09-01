FROM ubuntu:20.04

RUN apt-get update -y

RUN mkdir /root/Installer

COPY install_powershell.sh /root/Installer/install_powershell.sh

RUN /root/Installer/install_powershell.sh
