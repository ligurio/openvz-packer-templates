openvz-packer-templates
=======================

Packer templates for building base OpenVZ and Virtuozzo VM boxes.

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
    $ cd openvz-packer-templates
    $ packer build template.json

If you want to build only VirtualBox:

    $ packer build -only=virtualbox-iso template.json

Using Vagrant box
-----------------

	$ vagrant init [OpenVZ/Virtuozzo-7b2](https://atlas.hashicorp.com/OpenVZ/boxes/Virtuozzo-7b2)
	$ vagrant up --provider virtualbox
	$ vagrant ssh

Supported versions
------------------

This templates was tested using a packer 0.8.1.
