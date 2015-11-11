#!/bin/bash -eux

rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
curl http://ftp.openvz.org/openvz.repo > /etc/yum.repos.d/OpenVZ.repo
rpm --import http://ftp.openvz.org/RPM-GPG-Key-OpenVZ
yum install -y vzkernel vzctl vzquota ploop
