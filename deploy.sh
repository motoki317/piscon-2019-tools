#!/bin/bash

sh ssh-add.sh

cd ~/isucari/webapp/go

echo "Force pulling changes"
git fetch
git reset --hard origin/master

echo "Building app..."
export GO111MODULE=on
go build -o isucari

echo "Restarting..."
sudo systemctl restart isucari.golang
