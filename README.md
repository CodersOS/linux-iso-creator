# linux-iso-creator
Create a live distribution from install scripts



Build Command
-------------

```
docker rm test ; docker build -t test . && docker run test > test.iso
```

Failed Tries
------------

1. Use the chroot environment in a docker file. [Stackoverflow](http://stackoverflow.com/questions/26406048/debootstrap-inside-a-docker-container)
   [tag](https://github.com/CodersOS/linux-iso-creator/tree/try-using-chroot-in-docker)
2. Use the docker filesystem from `ubuntu:16.4` and it spits out itself. 
   Problem: initramfs does not find a bootable file system. [tag](https://github.com/CodersOS/linux-iso-creator/tree/try-using-docker-fs)
3. use a docker image based on debootstrap as a basis
