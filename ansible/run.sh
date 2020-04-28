#!/bin/bash
if [ $authorized_keys != '' ] ;then
    echo $authorized_keys > /root/.ssh/authorized_keys
fi

/usr/sbin/sshd -D
while true ;do sleep 9999h ;done
