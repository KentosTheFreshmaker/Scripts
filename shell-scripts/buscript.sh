#!/bin/bash 

TIME=`date +%F-%H%M%S`                   # time stamp to the backup file
FILENAME="backup_nam-$TIME.tar.gz"      # defining the format of the file name while backing up
SRCDIR="/var/www/html"                     # Location of the backup directory
DESDIR="\\hydranet\Files"                   #  Destination of the backup directory (where you need to backup)
tar -cpzf $DESDIR/$FILENAME $SRCDIR      # Executing the command