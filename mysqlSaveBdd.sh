#!/bin/bash

DATE=`date +%Y-%m-%d`
mkdir -p saveBdd/$DATE
mysqldump -P 3306 -u root -proot nextcloud | gzip > nextcloud.sql.gz
#scp -r saveBdd/$DATE root@192.168.21.154:~/solution-cloud/bddsave/completes/
scp -r saveBdd/$DATE root@192.168.33.201:~/solution-cloud/bddsave/completes/
rsync /var/log/mysql/mysql-bin.000002 root@192.168.33.201:~/solution-cloud/bddsave/incre/$DATE/
