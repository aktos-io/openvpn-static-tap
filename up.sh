#!/bin/bash 
DEVICE=$1
IP=$(cat ip-settings.txt)
echo 
echo "Setting static IP of $DEVICE to $IP"
echo "(additional parameters: $*)"
ifconfig $DEVICE $IP/24
