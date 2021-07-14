#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Please provide the remote folder and local folder'
    exit 1
fi

cd ~
rdir=$1
ldir=$2
ldirori=$ldir
i=0
while [ -d $ldir ]
  do
    ldir=${ldirori}_tmp$i
    i=$[$i+1]
done

mkdir $ldir
sshfs -o idmap=user ycwu@pete.hpc.okstate.edu:$rdir ~/$ldir
