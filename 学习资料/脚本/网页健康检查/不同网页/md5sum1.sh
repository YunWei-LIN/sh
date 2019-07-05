#!/bin/bash
while :
do
web1=a85b081245048fe5512fc8e78d83b90c
web2=08d99989ccfbb3951bfc4cd658a5cac4
curl1=`curl -s  192.168.4.100 | md5sum | awk '{print $1}'`
curl2=`curl -s  192.168.4.200 | md5sum | awk '{print $1}'`
clear
if [ $curl1 == $web1 ];then
        ipvsadm -A -t 192.168.4.15:80 -r 192.168.2.100:80 &> /dev/null
        echo web1正常
fi
        if [ $curl2 =  $web2 ];then
        ipvsadm -A -t 192.168.4.15:80 -r 192.168.2.100:80  &> /dev/null
echo web2正常
fi

if [ $curl1 != $web1 ];then

        ipvsadm -d -t 192.168.4.15 -r 192.168.4.100  &> /dev/null
        echo "web1 报警"
fi
if [ $curl2 !=  $web2 ];then
        ipvsadm -d -t 192.168.4.15 -r 192.168.4.200  &> /dev/null
        echo  "web2 报警" 

fi
done

