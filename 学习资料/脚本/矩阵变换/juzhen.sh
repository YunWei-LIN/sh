#!/bin/bash
#a等于dd.矩阵文件的列数,然后利用for循环将每一列的内容横向输出
a=`sed -n '1p'   /root/dd.矩阵文件 |  awk '{print NF}'`
for i in `seq $a`
  do
        echo  -n `awk '{print $'$i'}'  /root/dd`
        echo     
  done
