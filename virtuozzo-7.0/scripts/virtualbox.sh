VBOX_VERSION=$(cat /home/openvz/.vbox_version)

cd /tmp
mount -o loop /home/openvz/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/openvz/VBoxGuestAdditions_*.iso
