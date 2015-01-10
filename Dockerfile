#The image is private as I'm not sure if you can redistribute the vSphere CLI.
#
#Assumes you have installed the .gz for the vSphere CLI in the same directory
#you're running docker build from.
#

MAINTAINER krujos
FROM ubuntu
ADD ./VMware-vSphere-CLI-5.5.0-1384587.x86_64.tar.gz /vsphere_installer

RUN apt-get update
RUN apt-get install -y libxml-libxml-perl libssl-dev emacs
#Then go install the vmware cli by hand... TODO expect script that deals with the EULA.