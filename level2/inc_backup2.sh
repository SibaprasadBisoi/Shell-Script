#!/bin/bash
src=/var/log/grafana
dest=/home/ubuntu/grafana-backup
for file in $(find $src -printf "%P\n"); do
    if [ -a $dest/$file ]; then
        if [  $src/$file -nt $dest/$file ]; then
            cp -r $src/$file $dest/$file
        else
            echo file $file exists, so skipping it.
        fi
    else
        cp -r $src/$file $dest/$file
    fi
done 