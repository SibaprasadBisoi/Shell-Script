#!/bin/bash
src=/var/log
dest=/home/ec2-user
cur_time=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$dest/$cur_time.tgz
echo "$cur_time"
echo "Taking back up on $cur_time"
echo "Backup started"
tar czf $backup_file --absolute-names $src
echo "Backup completed"
