#!/bin/bash

BACKUP_TMP=/home/isucon/piscon/logs/
echo "Taking backup of log files..."
sudo cp /var/log/nginx/access.log $BACKUP_TMP
sudo cp /var/log/mysql/mysql-slow.log $BACKUP_TMP

echo "Emptying /var/log/nginx/access.log ..."
sudo truncate -s 0 /var/log/nginx/access.log

echo "Emptying /var/log/mysql/mysql-slow.log ..."
sudo truncate -s 0 /var/log/mysql/mysql-slow.log
