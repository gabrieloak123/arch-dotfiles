#!/bin/bash
nmcli r wifi on
nmcli device wifi list

echo "Type the network you want to connect"
read network
echo "Type the password"
read password

nmcli d wifi connect $network password $password
sleep 10
nmcli d
