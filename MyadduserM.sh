#!/bin/bash
i=1
logfile_name=add_user_'date +%y_%m_%d'_00.log
while [ -f $logfile_name ]; do
	logfile_name=add_user_'date +%y_%m_%d'_0$i.log
	let i+=1
done
for username in $(cat demo.txt); do
	user=`awk -F : '{print $1}' /etc/passwd | grep "\<$username\>"`
	 if [ "$username" == "$user" ]; then
  		echo "The user $username exists"
  		echo "User: username creates failure" >> $logfile_name 
  		continue 
 	fi
	useradd -d /home/$username $username
	echo demo | passwd --stdin $username
done