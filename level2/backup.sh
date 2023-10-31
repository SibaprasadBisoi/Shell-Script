#!/bin/bash
src=/home/ubuntu/scripts
dest=/home/ubuntu/backup
curr_time=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$dest/$curr_time.tgz
echo "$curr_time"
echo "taking the backup on $curr_time"
echo "backing the file"
tar czf $backup_file --absolute-names $src
echo "Backup completed"


