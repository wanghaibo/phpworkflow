phpworkflow
===========

workflow for php

##git use https##
git config --global url."https://".insteadOf git://

##yum install git on centos5##
rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
yum install git-core

##git clone not default port##
git clone ssh://user@git.example.com:8080/opt/git/my_project.git

##git allow remote push##
    [receive]
        denyCurrentBranch = ignore
##镜像下载
    http://mirrors.163.com/
##git bash自定义home目录
    -打开git安装目录\etc\profile
    -找到normalize HOME
    -添加HOME="D:/code"  cd $HOME
