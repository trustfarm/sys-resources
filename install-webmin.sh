#!/bin/sh

sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
sudo echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list 
wget  http://www.webmin.com/jcameron-key.asc 
sudo apt-key add jcameron-key.asc 
sudo apt-get update
sudo apt-get -y install webmin

# 그리고, 한번 rebooting

# sudo  shutdown -r now


# 1-1. webmin root passwd 변경 - shell 에서

# /usr/share/webmin/changepass.pl /etc/webmin root  xxxxxxxxxx  <-- password
# 1-2. 사용자 설정 및 등록
# 1) webmin 에 trustfarm, cpplover, etcpool, ethpool 등 module 사용자 등록을 root 권한으로 한다.
# 기존 root 는 막는다.
# 2) webmin -> networkworking -> network configuration  :  Host 이름 변경 , DNS 설정, domainname 설정
# 3) sudo domainname trustfarm.io
# 4) screenrc /etc/screenrc 에 카피

# 5) wget http://software.virtualmin.com/gpl/scripts/install.sh
# 6) chmod +x install.sh ; ./install.sh



