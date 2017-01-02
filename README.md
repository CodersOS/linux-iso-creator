linux-iso-creator
=================

This is a docker image which can transform itself into a live image for a CD or USB-Stick.

Get the Image
-------------

You can pull the image from dockerhub:

    docker pull codersos/linux-iso-creator

And, you can build the image from the sources and create a `.iso` file:

    ./build.sh

Failed Tries
------------

1. Use the chroot environment in a docker file. [Stackoverflow](http://stackoverflow.com/questions/26406048/debootstrap-inside-a-docker-container)
   [tag](https://github.com/CodersOS/linux-iso-creator/tree/try-using-chroot-in-docker)
2. Use the docker filesystem from `ubuntu:16.4` and it spits out itself. 
   Problem: initramfs does not find a bootable file system. [tag](https://github.com/CodersOS/linux-iso-creator/tree/try-using-docker-fs)
3. use a docker image based on debootstrap as a basis - failed, did not boot
4. use a docker image based on ubuntu remix - works!
