#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=70

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
	    mail -s 'Disk Space Alert' nicholasx.mcgrail@intel.com << EOF
Your root partition remaining free space is critically low. Used: $CURRENT%
EOF
fi
