#!/bin/bash
for username in $(cat demo.txt); do
	useradd -d /home/$username $username
	echo demo | passwd --stdin $username
done