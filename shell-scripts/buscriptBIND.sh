#!/bin/bash 

TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="DNS1-backup-$TIME.tar.gz"      # defining the format of the file name while backing up
SRCDIR="/etc/bind"                     # Location of the backup directory
DESDIR="/media/Fileshare/backups/sysfs/DNS1"                   #  Destination of the backup directory (where you need to backup)
tar -cpzf $DESDIR/$FILENAME $SRCDIR      # Executing the command