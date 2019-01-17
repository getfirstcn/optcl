#!/bin/bash
if [[ $1 =~ ^[A-Z]([0-9]{3})$ ]]
then
  echo "branch"
elif [[ $1 =~ ^v[0-9]{1,2}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]
then
  echo tag
else 
  echo no
fi
