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
    - Keystone - done
    - Nova - done
    - Glance - done
    - Quantum - done
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

See hacking/README.md

## Resources and references

* <https://github.com/ansible/ansible>
* <https://github.com/ansible-provisioning/ansible-provisioning>
* <https://groups.google.com/forum/?fromgroups=#!topic/ansible-project/eNlPwjIHGGs> - The thread that started this.
* <https://github.com/lorin/openstack-ansible/blob/master/vms/Vagrantfile>
* <https://github.com/curtisgithub/ansible_playbooks/tree/master/openstack_essex>
* <https://github.com/mseknibilel/OpenStack-Folsom-Install-guide/blob/master/OpenStack_Folsom_Install_Guide_WebVersion.rst>
* <https://wiki.ubuntu.com/ServerTeam/OpenStack>
