#!/bin/bash
echo "please input username"
read username
echo "please input password"
read password
useradd -d /home/$username $username
echo $password | passwd --stdin $username