FROM ubuntu:20.04

RUN apt-get update -y

RUN mkdir /Installer && chmod 776 /Installer

COPY install_powershell.sh /Installer/install_powershell.sh

RUN chmod a+x /Installer/install_powershell.sh

RUN /root/Installer/install_powershell.sh
