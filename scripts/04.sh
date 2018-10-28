#!/bin/bash
echo "0 0 * * * root \
if [ \$(md5sum /etc/crontab | awk '{ print $1 }') != \$(md5sum /etc/.crontab_backup | awk '{ print $1 }') ]; then \
	echo \"WARNING: Crontab has been modified. Mail was sended\" | mail -s \"Crontab charnged\" root &&	cp /etc/crontab /etc/.crontab_backup; fi" >> /etc/crontab
