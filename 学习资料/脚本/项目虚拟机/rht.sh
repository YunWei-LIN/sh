#!/bin/bash
echo "proxy 
proxy2 
web1 
web2 
web3 
database 
nfs 
node1 
node2  
node3 
client
all"
read -p "你要还原的虚拟机名称:"  n
if [ $n == client ];then
	virsh destroy  $n &> /dev/null 
	virsh undefine $n &> /dev/null
	rm -rf /var/lib/libvirt/images/tedu_node11.img
	rm -rf /etc/libvirt/qemu/$n.xml
	cp -p $PWD/$n.xml /etc/libvirt/qemu/
	cp -p $PWD/tedu_node11.img /var/lib/libvirt/images/
	sleep 2
	virsh define /etc/libvirt/qemu/$n.xml > /dev/null
	echo -e "\033[32m已还原"$n"\033[0m"
	virsh start $n > /dev/null
	echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == proxy ];then
	virsh destroy  $n &> /dev/null    
	virsh undefine $n &> /dev/null
	rm -rf /var/lib/libvirt/images/tedu_node1.img
	rm -rf /etc/libvirt/qemu/$n.xml
	cp -p $PWD/$n.xml /etc/libvirt/qemu/
	cp -p $PWD/tedu_node1.img /var/lib/libvirt/images/
	sleep 2
	virsh define /etc/libvirt/qemu/$n.xml > /dev/null
	echo -e "\033[32m已还原"$n"\033[0m"
	virsh start $n > /dev/null
	echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == proxy2 ];then
	virsh destroy  $n &> /dev/null    
	virsh undefine $n &> /dev/null
	rm -rf /var/lib/libvirt/images/tedu_node2.img
	rm -rf /etc/libvirt/qemu/$n.xml
	cp -p $PWD/$n.xml /etc/libvirt/qemu/
	cp -p $PWD/tedu_node2.img /var/lib/libvirt/images/
	sleep 2
	virsh define /etc/libvirt/qemu/$n.xml > /dev/null
	echo -e "\033[32m已还原"$n"\033[0m"
	virsh start $n > /dev/null
	echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == web1 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node3.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node3.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == web2 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node4.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node4.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == web3 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node5.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node5.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == database ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node6.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node6.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == nfs ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node7.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node7.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == node1 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node8.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node8.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == node2 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node9.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node9.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == node3 ];then
        virsh destroy  $n &> /dev/null
        virsh undefine $n &> /dev/null
        rm -rf /var/lib/libvirt/images/tedu_node10.img
        rm -rf /etc/libvirt/qemu/$n.xml
        cp -p $PWD/$n.xml /etc/libvirt/qemu/
        cp -p $PWD/tedu_node10.img /var/lib/libvirt/images/
        sleep 2
        virsh define /etc/libvirt/qemu/$n.xml > /dev/null
        echo -e "\033[32m已还原"$n"\033[0m"
        virsh start $n > /dev/null
        echo -e "\033[32m已开启"$n"\033[0m"
elif [ $n == all ];then
a=0
for i in  proxy proxy2 web1 web2 web3 database nfs node1 node2  node3 client
do
	let a++
	virsh destroy $i  &> /dev/null
	virsh undefine $i &> /dev/null
rm -rf /var/lib/libvirt/images/tedu_node$a.img
rm -rf /etc/libvirt/qemu/$i.xml
cp -p $PWD/$i.xml /etc/libvirt/qemu/
cp -p $PWD/tedu_node$a.img /var/lib/libvirt/images/
sleep 1.5
virsh define /etc/libvirt/qemu/$i.xml > /dev/null
echo -e "\033[32m已还原"$i"\033[0m"
virsh start $i > /dev/null
echo -e "\033[32m已开启"$i"\033[0m"
done
else 
	echo "请输入正确的主机名:"
	echo client
	echo proxy 
	echo proxy2
	echo web1
	echo web2
	echo web3
	echo database
	echo nfs
	echo node1
	echo noed2
	echo node3
	echo "all"
fi
