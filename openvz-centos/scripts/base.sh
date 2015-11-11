#!/bin/bash -eux

curl http://ftp.openvz.org/openvz.repo > /etc/yum.repos.d/OpenVZ.repo
rpm --import http://ftp.openvz.org/RPM-GPG-Key-OpenVZ
yum install -y vzkernel vzctl vzquota ploop
