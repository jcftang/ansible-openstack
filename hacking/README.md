## Requirements

Working installation of 

* ansible
* vagrant
  * will require a working version of ruby and bundler

## Quickstart

Upon first checkout ansible-openstack repo

    $ pwd
    /home/user/ansible-openstack/
    $ cd hacking
    $ source hacking/env-setup
    $ bundle
    $ vagrant up
    $ cd ..
    $ ansible-playbook playbooks/folsom-stable-setup.yml
    

The bundle command will install the needed components to run the vagrant
vms with the ansible plugin.

There are three networks in the VM environment with vagrant and virtual box

* 10.0.2.0/255.255.255.0 - vagrant management network
* 192.168.206.0/255.255.255.0 - ??? network - range taken from github.com/lorin/openstack-ansible
* 192.168.100.0/255.255.255.0 - ??? network - range taken from github.com/lorin/openstack-ansible

The env-setup script will setup the environment to alias ansible and
ansible-playbook with the included hosts file and private key for the vagrant
VM.
