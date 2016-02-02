#!/bin/bash
logfile_name=add_users_`date +%Y_%m_%d`_00.log
i=1
while [ -f $logfile_name ]; do
 	logfile_name=add_users_`date +%Y_%m_%d`_0$i.log
 	let i+=1
done
for username in $(cat demo.txt); do
	user=`awk -F : '{print $1}' /etc/passwd | grep "\<$username\>"`
	 if [ "$username" == "$user" ]; then
  		echo "The user $username exists"
  		echo "$user: username creates failure" >> $logfile_name 
  		continue 
 	fi
	useradd -d /home/$username $username
	echo demo | passwd --stdin $username
done