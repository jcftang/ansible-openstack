#!/bin/sh

usage() {
	echo "usage: $0 playbook.yml"
}

if [ $# -lt 1 ]; then
	usage
	exit 1
fi

ansible-playbook -i hosts  -u vagrant --private-key=files/keys/insecure_private_key $@
