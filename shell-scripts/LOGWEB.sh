#!/bin/bash 

TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="WEB1-syslog-$TIME.log"      # defining the format of the file name while backing up
SRCDIR="/var/log/."                     # 0 of the backup directory
DESDIR="/media/Fileshare/backups/syslogs/web1/"                   #  Destination of the backup directory (where you need to backup)
cp -r $SRCDIR $DESDIR/$FILENAME       # Executing the command