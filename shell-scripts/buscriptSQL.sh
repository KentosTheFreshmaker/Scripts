#!/bin/bash 
TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="SQL-backup-$TIME.sql"      # defining the format of the file name while backing up
SRCDIR="mysql"                     # Location of the backup directory
FOLDNAME = `hostname `
DESDIR="/media/Fileshare/backups/sysfs/$FOLDNAME"   #  Destination of the backup. Assumes machine name as folder name
mysqldump --all-databases >  $DESDIR/$FILENAME -u root -p[password]
