#/bin/bash
#bb为所有名字文件 格式一行一个名字 按Ctrl C暂停随机 按回车暂停作弊
a=`cat /root/bb | wc -l`
while :
do
#trap "" INT QUIT TSTP 屏蔽Ctrl C键操作
	if read -t 0.01 ;then
	clear 
	echo   natasha
	echo ^C
	exit
	fi  
b=$[RANDOM%$a+1]
clear
 sed -n ''$b'p' /root/bb
#sleep 0.01
done
