date > /etc/vagrant_box_build_time

mkdir -pm 700 $HOME_DIR/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o $HOME_DIR/.ssh/authorized_keys
chmod 0600 $HOME_DIR/.ssh/authorized_keys
chown -R openvz:openvz $HOME_DIR/.ssh
