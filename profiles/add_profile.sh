#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $0))
ADD_PROFILE="${SCRIPT_DIR}/bash_profile_basic"

echo -e "\n# LINUX UTILS 001 START\n" >> ~/.bash_profile
echo ". $ADD_PROFILE" >> ~/.bash_profile
echo -e "\n# LINUX UTILS 001 END\n" >> ~/.bash_profile
. $ADD_PROFILE
