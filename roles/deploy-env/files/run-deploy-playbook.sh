#!/bin/bash

base=`dirname $0`

if [ "$1" == "localhost" ]; then
    ansible-playbook -i "$base/hosts" --connection=local  "$base/deploy.yml" -e 'host_key_checking=False' --extra-vars "SRC=$2 DEST=$3"
else
    ansible-playbook -i "$1," "$base/deploy.yml" -e 'host_key_checking=False' --extra-vars "SRC=$2 DEST=$3"
fi