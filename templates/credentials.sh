#!/bin/bash

export OS_TENANT_NAME=openstackDemo
export OS_USERNAME=adminUser
export OS_PASSWORD=secretword
export OS_AUTH_URL="http://{{ keystone_server }}:5000/v2.0/"
