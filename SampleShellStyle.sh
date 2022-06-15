#!/bin/bash
#Author: Abraham
#Version: 1.0
COLUMNS=$(tput cols)
get_date_time(){
  echo $(date '+%d-%m-%Y %r')
}
prRed(){
  echo -e "\033[91m$1 \033[00m"
}
prGreen(){
  echo -e "\033[92m$1 \033[00m"
}
prYellow(){
  echo -e "\033[93m$1 \033[00m"
}
prPurple(){
  echo -e "\033[95m$1 \033[00m"
}
prCycan(){
  echo -e "\033[96m$1 \033[00m"
}
prHeader(){
  for each in $(seq 1 $COLUMNS)
  do
     echo -n $1
  done
}

prtxtCenter(){
  title=$1
  printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
}

main (){
  clear
  prHeader "="
  prtxtCenter "Welcome to Git Installation"
  prHeader "-"
  prCycan "$(get_date_time)" # Checking all available git versions .......pls wait "
}

if [ "${USER}" != "root" ]
then
   prRed "$(get_date_time) please run as Root User"
   exit 1
else
  main
fi
