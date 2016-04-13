#!/bin/bash
echo "openvas-nvt-sync start"
openvas-nvt-sync
echo "openvas-nvt-sync finsh"

echo "openvas-scapdata-sync start"
openvas-scapdata-sync
echo "openvas-scapdata-sync finsh"

echo "openvas-certdata-sync start"
openvas-certdata-sync
echo "openvas-certdata-sync finsh"

echo "openvasmd --rebuild start"
openvasmd --rebuild  
echo "openvasmd --rebuild finsh"

echo "openvasmd --update start"
openvasmd --update
echo "openvasmd --update finsh"

echo "openvasmd --migrate start"
openvasmd --migrate
echo "openvasmd --migrate finsh"

echo "openvassd start"
openvassd 
echo "openvassd finsh"

echo "openvasmd start" 
openvasmd
echo "openvasmd finsh"

echo "gsad --http-only start"
gsad --http-only
echo "gsad --http-only finsh"

logfile_name=update_openvass_`date +%Y_%m_%d`.log
echo "update succeed" >> $logfile_name 