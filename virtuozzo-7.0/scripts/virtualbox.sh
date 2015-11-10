VBOX_VERSION=$(cat /home/openvz/.vbox_version)

# required for VirtualBox 4.3.26
yum install -y bzip2

cd /tmp
mount -o loop /home/openvz/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/openvz/VBoxGuestAdditions_*.iso

