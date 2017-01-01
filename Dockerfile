FROM ubuntu:16.04

RUN apt-get -qq update && apt-get -y -qq install debootstrap syslinux squashfs-tools genisoimage

ADD iso-creation /iso-creation
RUN /iso-creation/install.sh

COMMAND iso-creation/command.sh