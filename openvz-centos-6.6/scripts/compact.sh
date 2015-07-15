#!/usr/bin/env bash

yum -y remove glibc-headers glibc-devel libgomp mpfr cloog-ppl ppl kernel-devel kernel-headers wget cpp gcc perl*
yum clean all

dd if=/dev/zero of=/junk bs=1M
rm -f /junk

sync
