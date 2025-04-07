#!/bin/bash
SRC_DIR="/etc"
BACKUP_DIR="/home/ec2-user/task2/etc-backup"
DATE=$(date '+%y-%m-%d_%H:%M:%S')
TARFILE="/home/ec2-user/task2/etc-backup_$DATE.tar.gz"
BUCKET="demo-basics"
EMAIL="healthylivingfriday@gmail.com"

# Create the backup directroy
mkdir -p $BACKUP_DIR
sudo cp -r $SRC_DIR $BACKUP_DIR_$DATE/etc_copy_$DATE 2>/dev/null

#archive and zip the files
tar -czf $TARFILE $BACKUP_DIR etc_copy_$DATE 


# upload to s3 bucket on aws
aws s3 cp $TARFILE s3://$BUCKET/

# send email alert
#
 echo "Backup of ETC creates on $DATE and uploaded to s3 bucket." | mail -s "Etc Backup completed to s3" $EMAIL


