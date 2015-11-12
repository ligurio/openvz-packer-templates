date > /etc/vagrant_box_build_time

mkdir -pm 700 /home/openvz/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/openvz/.ssh/authorized_keys
chmod 0600 /home/openvz/.ssh/authorized_keys
chown -R openvz:openvz /home/openvz/.ssh
