mkdir -p /tmp/parallels;
mount -o loop $HOME_DIR/prl-tools-lin.iso /tmp/parallels;
/tmp/parallels/install --install-unattended-with-deps \
  || (code="$?"; \
      echo "Parallels tools installation exited $code, attempting" \
      "to output /var/log/parallels-tools-install.log"; \
      cat /var/log/parallels-tools-install.log; \
      exit $code);
umount /tmp/parallels;
rm -rf /tmp/parallels;
rm -f $HOME_DIR/*.iso;
