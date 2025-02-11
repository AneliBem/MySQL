#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

MYSQLDUMP="/opt/lampp/bin/mysqldump"

$MYSQLDUMP -u root tabl > ~/backup_$DATE.sql

cd ~/sqlbase

mv ~/backup_$DATE.sql backup.sql

git add backup.sql
git commit -m "Auto backup $DATE"
git push origin master
