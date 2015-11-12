date > /etc/vagrant_box_build_time

mkdir -pm 700 $HOME/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o $HOME/.ssh/authorized_keys
chmod 0600 $HOME/.ssh/authorized_keys
chown -R openvz:openvz $HOME/.ssh
