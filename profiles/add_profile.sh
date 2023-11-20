#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $BASH_SOURCE))
ADD_PROFILE="${SCRIPT_DIR}/bash_profile_basic"
ADD_RC="${SCRIPT_DIR}/bashrc_basic"

grep -qs "^# LINUX UTILS 001 START" ~/.bash_profile

if [[ $? -ne 0 ]]
then
  echo -e "\n# LINUX UTILS 001 START\n" >> ~/.bash_profile
  cat $ADD_PROFILE >> ~/.bash_profile
  echo -e "\n# LINUX UTILS 001 END\n" >> ~/.bash_profile
fi

grep -qs "^# LINUX UTILS 001 START" ~/.bashrc

if [[ $? -ne 0 ]]
then
  echo -e "\n# LINUX UTILS 001 START\n" >> ~/.bashrc
  cat $ADD_RC >> ~/.bashrc
  echo -e "\n# LINUX UTILS 001 END\n" >> ~/.bashrc
fi

. ~/.bash_profile
