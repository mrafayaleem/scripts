#!/bin/bash

PKT_SIZE=1500
HOSTNAME="www.dslreports.com"

count=`ping -M do -c 1 -s $PKT_SIZE $HOSTNAME | grep -c "Frag needed"`

while [ $count -eq 1 ]; do
 ((PKT_SIZE--))
 count=$((`ping -M do -c 1 -s $PKT_SIZE $HOSTNAME | grep -c "Frag needed"`))
done

printf "Your Maximum MTU is [ $((PKT_SIZE + 28)) ] \n"
