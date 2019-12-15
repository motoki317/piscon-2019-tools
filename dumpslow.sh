#!/bin/bash

echo "Reading from /var/log/mysql/mysql-slow.log"
sudo mysqldumpslow -t 25 /var/log/mysql/mysql-slow.log | cut -c-2000
