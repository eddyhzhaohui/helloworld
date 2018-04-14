#!/bin/bash

#手动发布脚本
#set version of time
TIME = `date +"%Y%m%d"`
mkdir ~/codeinfo/javaVersion$TIME
cd ~/codeinfo/javaVersion$TIME

#download git
git clone git://github.com/eddyhzhaohui/helloworld.git

#deploy packageinfo to realserver
scp ~/codeinfo/javaVersion$TIME/* vagrant@192.168.33.10:/home/vagrant/codetest
