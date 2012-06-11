#!/bin/sh

BACKUP_LOG=/var/log/backup.log

rpm -qa > /root/scripts/rpm_package.txt


echo "-----------------8<-----------------" >> $BACKUP_LOG
echo "Backup start `date "+%Y/%m/%d %R"`" >> $BACKUP_LOG
/root/scripts/s3_backup.sh >> $BACKUP_LOG
echo "Backup end `date "+%Y/%m/%d %R"`" >> $BACKUP_LOG

