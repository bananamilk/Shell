#!/bin/bash
echo "please input username"
read username
#user=`cat /etc/passwd | awk -F ':' '{print $1}' | grep "\<$username\>"`
user=`awk -F : '{print $1}' /etc/passwd | grep "\<$username\>"`
if [ "$username" == "$user" ]; then
echo "The user  exist"
exit 0
fi
	

echo "please input password"
read password
useradd -d /home/$username $username
echo $password | passwd --stdin $username

