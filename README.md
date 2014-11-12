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

##centos6 升级git
    [原文链接](http://tecadmin.net/how-to-upgrade-git-version-1-7-10-on-centos-6/)
 * RHEL/CentOS 6 - 64bit
 * rpm -i 'http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm'
 * rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt

 * RHEL/CentOS 6 - 32bit
 * rpm -i 'http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.i686.rpm'
 * rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt


 * vim /etc/yum.repos.d/rpmforge.repo
 * Edit your rpmforge repository file and change enabled=1 from 0 in [rpmforge-extras] section

 * yum update git
 * Edit and disable rpmforge-extras repository in rpmforge.repo and clean the yum data
 * yum clean all

###提取git两个版本的差异，并打包文件
 * git add * && git commit -a -m'loginfo' && git log --pretty=oneline -2|awk '{print $1}'|xargs git diff --name-only|xargs zip ~/update.zip &&sz ~/update.zip
 
###curl resolve
 * curl --resolve foo.example.com:443:127.0.0.1 https://foo.example.com:443/

###内存清理
 * #!/bin/bash
 * source /etc/profile
 * source /root/.bash_profile
 * sync
 * echo 3 > /proc/sys/vm/drop_caches
###mysql清理请求
 * mysqladmin -uroot -p processlist|awk -F "|" '{print $2}'|xargs -n 1 mysqladmin -uroot -p kill
