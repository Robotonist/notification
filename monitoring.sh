#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=70
EMAIL=yourname.yourlastname@company.com

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
	    mail -s 'Disk Space Alert' $EMAIL << EOF
Your root partition remaining free space is critically low. Used: $CURRENT%
EOF
fi
