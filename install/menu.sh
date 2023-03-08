#!/bin/env bash

#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for yiimpool use...
#####################################################

source /etc/yiimpooldonate.conf
source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Yiimpool Menu $VERSION" --menu "Choose one" -1 60 16 \
' ' "- Install Yiimp  -" \
1 "YiiMP Single Server" \
' ' "- Daemon Wallet Builder -" \
2 "Daemonbuilder" \
' ' "- Update Yiimp stratum -" \
3 "Start yiimp stratum upgrade" \
4 Exit)
if [ $RESULT = 1 ]
then
clear;
cd $HOME/yiimp_install_script/yiimp_single
source start.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/yiimp_install_script/daemon_builder
source start.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/yiimp_install_script/yiimp_upgrade
source start.sh;
fi

if [ $RESULT = 4 ]
then
clear;
exit;
fi
