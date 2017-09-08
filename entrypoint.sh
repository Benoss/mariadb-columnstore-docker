#!/usr/bin/env bash

export > /etc/envvars
if [[ $# -eq 0 ]]; then
  exec /usr/sbin/runsvdir-start
elif [[ $1 == "" ]]; then
  exec /usr/sbin/runsvdir-start
elif [[ $1 == "mcsadmin" ]]; then
  
elif  [[ $1 == "mcsmysql" ]]; then

fi
