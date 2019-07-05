#!/bin/bash
VIP=192.168.4.20
RIP1="192.168.4.9"
RIP2="192.168.4.10"
a="09147002994b23117fd6d254b3145cc2"
while :
do
        for ip in $RIP1 $RIP2
        do
        b=$(curl -s http://$ip | md5sum | awk '{print $1}')
        if [ $a != $b ];then
            ipvsadm -d -t $VIP:80 -r $ip  &> /dev/null
        fi
        if [ $a == $b ];then
        ipvsadm -a -t $VIP:80 -r $ip  &> /dev/null
        fi
        done
sleep 1
done

