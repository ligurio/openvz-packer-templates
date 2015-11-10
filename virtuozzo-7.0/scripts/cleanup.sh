yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean all

echo 'Cleanup log files'
find /var/log -type f | while read f; do echo -ne '' > $f; done;
