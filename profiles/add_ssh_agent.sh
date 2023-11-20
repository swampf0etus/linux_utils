#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $BASH_SOURCE))
AGENT_PROFILE="${SCRIPT_DIR}/ssh_agent"

grep -qs "^# LINUX UTILS 002 START" ~/.bashrc

if [[ $? -ne 0 ]]
then
  echo -e "\n# LINUX UTILS 002 START\n" >> ~/.bashrc
  cat $AGENT_PROFILE >> ~/.bashrc
  echo -e "\n# LINUX UTILS 002 END\n" >> ~/.bashrc
fi
