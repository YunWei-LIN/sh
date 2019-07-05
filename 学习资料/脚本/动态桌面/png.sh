#!/bin/bash
while :
do
for i in `seq 7`
do
cp  $PWD/"timg$i.jpg"  /var/lib/libvirt/images/tedu-wallpaper-01.png
sleep 5
done
done
