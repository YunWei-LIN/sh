#!/bin/bash
#找到所有.$1文件 依次交给for循环 把找到的每个文件去尾,得到无扩展名的文件名修改文件,将名称与.$2组合
for i in `ls *.$1`    
do
        n=${i%.*}      
        mv $i $n.doc  
done

