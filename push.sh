#!/bin/bash
cd /home/ubuntu/jenkins
sudo cp -r /var/lib/jenkins .
sudo chmod -R 777 *
echo "adding to git"
git add --all
timestamp=`date "+%d_%m_%T"`
echo $timestamp
git commit -m "$timestamp"
git push origin master
echo "git push done for $timestamp"
