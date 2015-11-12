VBOX_VERSION=$(cat $HOME/.vbox_version)
cd /tmp
mount -o loop $HOME/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf $HOME/VBoxGuestAdditions_*.iso

