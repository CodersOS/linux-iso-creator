# linux-iso-creator
Create a live distribution from install scripts



Build Command
-------------

```
docker rm test ; docker build -t test . && docker run test > test.iso
```

Failed Tries
------------

1. Use the chroot environment in a docker file. https://github.com/CodersOS/linux-iso-creator/tree/try-using-chroot-in-docker
2. Use the docker filesystem from `ubuntu:16.4` and it spits out itself. 
   Problem: initramfs does not find a bootable file system. https://github.com/CodersOS/linux-iso-creator/tree/try-using-docker-fs
