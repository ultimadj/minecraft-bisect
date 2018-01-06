#!/bin/bash
echo Starting backup...
. secrets/secrets.sh
echo FTP_HOST=$FTP_HOST

BACKUP_DIR=/d/tmp/minecraft-bisect/backup/$(date '+%Y%m%d_%k%M')/
mkdir -p $BACKUP_DIR
# https://stackoverflow.com/questions/113886/how-to-recursively-download-a-folder-via-ftp-on-linux
cd $BACKUP_DIR
#wget -m --user=$FTP_USER --password=$FTP_PASSWORD ftp://$FTP_HOST 