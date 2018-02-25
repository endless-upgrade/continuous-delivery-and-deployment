#!/bin/bash

if [ "$1" == "localhost"]; then
    ansible-playbook -i ./hosts --connection=local deploy.yml -e 'host_key_checking=False' --extra-vars "SRC=$2 DEST=$3"
else
    ansible-playbook -i '$1,' deploy.yml -e 'host_key_checking=False' --extra-vars "SRC=$2 DEST=$3"
fi