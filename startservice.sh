#!/bin/bash
read -p "Start service ? Enter yes or no : " userconf
if [[ $userconf = yes || $userconf = y ]] # or if [[ $userconf =~ y|yes ]]
then
systemctl start nginx
else
echo "Skipping......."
fi
