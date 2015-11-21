VBOX_VERSION=$(cat $HOME_DIR/.vbox_version)

cd /tmp
mount -o loop $HOME_DIR/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf $HOME_DIR/VBoxGuestAdditions_*.iso
