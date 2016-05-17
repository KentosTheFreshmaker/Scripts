#!/bin/bash 
TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="SQL-backup-$TIME.sql"      # defining the format of the file name while backing up
SRCDIR="mysql"                     # Location of the backup directory
DESDIR="/media/Fileshare/backups/sysfs/web1"                   #  Destination of the backup directory (where you need to backup)
mysqldump --all-databases >  $DESDIR/$FILENAME -u root -p38UrSjMyJQAy4CHr