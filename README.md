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

## Resources and references

* <https://groups.google.com/forum/?fromgroups=#!topic/ansible-project/eNlPwjIHGGs>
* <https://github.com/lorin/openstack-ansible/blob/master/vms/Vagrantfile>
* <https://github.com/curtisgithub/ansible_playbooks/tree/master/openstack_essex>
