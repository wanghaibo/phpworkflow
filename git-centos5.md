=ref=
<pre>
http://git-scm.com/book/zh/%E8%B5%B7%E6%AD%A5-%E5%AE%89%E8%A3%85-Git
</pre>

=yum安装遇到的问题=
==系统中yum仓库可能不包含git==
<pre>
yum install git-core
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
* addons: mirrors.hust.edu.cn
* base: mirrors.hust.edu.cn
* extras: mirrors.hust.edu.cn
* updates: mirrors.hust.edu.cn
Setting up Install Process
No package git-core available.
</pre>
==解决方法==
添加epel（Extra Packages for Enterprise Linux）
<pre>
rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
yum install git-core
