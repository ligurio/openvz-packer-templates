sed -i "s/^Defaults    requiretty/Defaults \!requiretty/" /etc/sudoers
yum -y group install "Odin Containers"
yum -y group install "Odin Hypervisor"
