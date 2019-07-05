#!/bin/bash
for i in `ls /etc/*.conf`
do 
	md5sum $i >> bak.log
done
