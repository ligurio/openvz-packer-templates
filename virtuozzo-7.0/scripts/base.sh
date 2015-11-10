sed -i "s/^Defaults    requiretty/Defaults \!requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl
