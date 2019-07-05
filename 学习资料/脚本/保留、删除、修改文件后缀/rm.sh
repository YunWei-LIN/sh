#!/bin/bash
#进入目录找出除.doc结尾的其他文档然后删除
cd $1
a=`ls  | grep -v "\.doc$"`
rm -rf $a
#进入目录找除以.doc结尾的文件然后删除
cd $1 
a=`ls  | grep "\.doc$"`
rm -rf $a
