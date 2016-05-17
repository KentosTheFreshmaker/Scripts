#!/bin/bash 

TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="MAIL-syslog-$TIME.tar.gz"      # defining the format of the file name while backing up
SRCDIR="/var/log/"                     # Location of the backup directory
DESDIR="/media/Fileshare/backups/syslogs/mail1"                   #  Destination of the backup directory (where you need to backup)
cp -R $DESDIR/$FILENAME $SRCDIR      # Executing the command