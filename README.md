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

Using Vagrant box
-----------------

	$ vagrant init OpenVZ/Virtuozzo-7b2
	$ vagrant up --provider virtualbox
	$ vagrant ssh

Supported versions
------------------

This templates was tested using a packer 0.8.1.
