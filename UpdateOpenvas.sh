#!/bin/bash
openvas-nvt-sync
openvas-scapdata-sync
openvas-certdata-sync
openvasmd --rebuild  
openvasmd --update
openvasmd --migrate
openvassd 
openvasmd
gsad --http-only

logfile_name=update_openvass_`date +%Y_%m_%d`.log
echo "update succeed" >> $logfile_name 