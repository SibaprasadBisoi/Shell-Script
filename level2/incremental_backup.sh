#!/bin/bash
src=/tmp/folder
dest=/home/siba/folder
for file in $(find $src -printf "%P\n"); do
    if [ -a $dest/$file  ] ; then
        if [ $src/$file -nt $dest/$file ] ; then
            cp -r $src/$file $dest/$file
        else
            echo file $file exists, so skipping
        fi
    else
        echo file $file is being copied over destinaton
        cp -r $src/$file $dest/$file
    fi
done
