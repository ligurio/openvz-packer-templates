#!/usr/bin/env bash

yum -y remove glibc-headers glibc-devel libgomp mpfr cloog-ppl ppl kernel-devel kernel-headers cpp gcc
yum clean all

dd if=/dev/zero of=/junk bs=1M
rm -f /junk

sync
