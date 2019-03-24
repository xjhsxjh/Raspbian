#!/bin/sh

echo "${BLUE}UPDATING; UPGRADING AND CLEANING"
echo
echo "################################"

. "$(dirname "$0")"/shellColors.sh



echo -n "${RED}UPDATING AND UPGRADING"
echo "${NORMAL}"
echo


sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade


echo -n "${RED}CLEANING"
echo "${NORMAL}"
echo

sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean
sudo apt-get -y install -f


sudo dpkg --configure -a > /dev/null

echo -n "${BLUE}DONE!"
echo "${NORMAL}"
echo



