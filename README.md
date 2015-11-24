OpenVZ packer templates
=======================

Packer templates for building base [OpenVZ and Virtuozzo VM boxes](https://atlas.hashicorp.com/OpenVZ/).

Usage
=====

Installing Packer
-----------------

[Download](http://www.packer.io/downloads.html) the latest packer and unzip the
appropriate directory.

If you're using Homebrew:

    $ brew tap homebrew/binary
    $ brew install packer

Running Packer
--------------

    $ git clone https://github.com/ligurio/openvz-packer-templates
    $ packer build virtuozzo-7.0.json

If you want to build only VirtualBox:

    $ packer build -only=virtualbox-iso virtuozzo-7.0.json

The result box will be available in `builds/` directory.

### Virtuozzo 7.0 Beta 2

By default the box `virtuozzo-7.0` will be built using the ISO from the latest
released milestone of Virtuozzo 7.0. At this moment it is _7.0-beta1_
If you want to build the box `virtuozzo-7.0` from the current factory ISO build, you
should override `iso_url` and `iso_checksum` variables, for example:

```console
$ export VZ_FACTOY_URL=https://download.openvz.org/virtuozzo/factory/x86_64/iso/factory-DVD && \
  export VZ_FACTOY_CHECKSUM=`curl --silent https://download.openvz.org/virtuozzo/factory/x86_64/iso/factory-CHECKSUM | grep DVD | awk '{print $1}'`

$ packer build -var "iso_url=${VZ_FACTOY_URL}" -var "iso_checksum=${VZ_FACTOY_CHECKSUM}" centos-6.7-x86_64.json
```

Using Vagrant box
-----------------

	$ vagrant init OpenVZ/Virtuozzo-7b2
	$ vagrant up --provider virtualbox
	$ vagrant ssh

Supported versions
------------------

This templates was tested using a packer 0.8.1.
