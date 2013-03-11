## WARNING

This is either in development or testing for now, it is *not* for production.

## Requirements

Working installation of 

* ansible
* ubuntu 12.04 as the remote host

## Plan?

1. Install and configure openstack into one VM/Machine
1. Break out compute node to install into its own VM/Machine or VM's/Machines

Should target folsom or newer releases in a long term supported linux
distro (either Ubuntu 12.04 or RHEL6 derived system).

The choices made here is to use Ubuntu 12.04 and Folsom which is the latest
stable release.

### Node types needed

Gotten from the interwebs - notes and other documentation

* Controller Node (no distinction of internal and public network)
    - Keystone - basic setup done
    - Nova - basic setup done
    - Glance - basic setup done
    - Quantum - basic setup done
    - Cinder - basic setup done, cinder-volumes are yet to be done
    - Horizon - basic setup done, inteface comes up, can login via username: adminUser password: secretword
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

See hacking/README.md

## Resources and references

* <https://github.com/ansible/ansible>
* <https://github.com/ansible-provisioning/ansible-provisioning>
* <https://groups.google.com/forum/?fromgroups=#!topic/ansible-project/eNlPwjIHGGs> - The thread that started this.
* <https://github.com/lorin/openstack-ansible/blob/master/vms/Vagrantfile>
* <https://github.com/curtisgithub/ansible_playbooks/tree/master/openstack_essex>
* <https://github.com/mseknibilel/OpenStack-Folsom-Install-guide/blob/master/OpenStack_Folsom_Install_Guide_WebVersion.rst>
* <https://wiki.ubuntu.com/ServerTeam/OpenStack>
