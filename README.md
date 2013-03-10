## Requirements

Working installation of 

* ansible
* vagrant
  * will require a working version of ruby and bundler

## Quickstart

Upon first checkout

    $ bundle
    $ vagrant up

The bundle command will install the needed components to run the vagrant
vms with the ansible plugin.

## Plan?

1. Install and configure openstack into one VM
1. Break out compute node to install into its own VM or VM's

Should target folsom or newer releases in a long term supported linux
distro (either Ubuntu 12.04 or RHEL6 derived system).

The choices made here is to use Ubuntu 12.04 and Folsom which is the latest
stable release.

There are three networks in the VM environment with vagrant and virtual box

* 10.0.2.0/255.255.255.0 - vagrant management network
* 192.168.206.0/255.255.255.0 - ??? network - range taken from github.com/lorin/openstack-ansible
* 192.168.100.0/255.255.255.0 - ??? network - range taken from github.com/lorin/openstack-ansible

### Node types needed

Gotten from the interwebs - notes and other documentation

* Controller Node
    - Keystone
    - Nova
    - Glance
    - Quantum
    - Cinder
    - Horizon
* Compute Node
* Network Node

### Possible classes/roles needed

* Keystone
* Nova
* Cinder
* Glance
* Horizon
* Quantum

## Development and testing notes

Running 'vagrant up' will bring up a number of VM's, this may not be desired,
so bring up the VM that you want to use by doing 'vagrant status' to get a list
of available VM's. Then 'vagrant up LABEL' to bring up the specific VM.

The repo has a small _hosts_ file and ansible.cfg, so if you run ansible from
the current top level directory of this repo, the 'correct' thing should
happen (I hope). There is also a small _runner.sh_ script which wraps
up running a playbook with the vagrant private key. Some this could go
into the ansible.cfg file, it's there the runner script isn't needed
but may be useful.

## Resources and references

* <https://github.com/ansible/ansible>
* <https://github.com/ansible-provisioning/ansible-provisioning>
* <https://groups.google.com/forum/?fromgroups=#!topic/ansible-project/eNlPwjIHGGs> - The thread that started this.
* <https://github.com/lorin/openstack-ansible/blob/master/vms/Vagrantfile>
* <https://github.com/curtisgithub/ansible_playbooks/tree/master/openstack_essex>
* <https://github.com/mseknibilel/OpenStack-Folsom-Install-guide/blob/master/OpenStack_Folsom_Install_Guide_WebVersion.rst>
* <https://wiki.ubuntu.com/ServerTeam/OpenStack>
