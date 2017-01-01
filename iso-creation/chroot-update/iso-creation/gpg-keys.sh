sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
wget -q https://dl.google.com/linux/linux_signing_key.pub -O- | sudo apt-key add -
sudo wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
wget -q http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_16.04/Release.key -O- | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 886DDD89
