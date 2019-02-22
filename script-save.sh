#/bin/bash
DATE=`date +%Y-%m-%d`

 mkdir -p websave

rsync --backup --backup-dir=$DATE -a root@192.168.43.208:/var/www/html/nextcloud/ websave/

