#!/bin/bash
ansible-playbook -i ./hosts --connection=local $1 -e 'host_key_checking=False'