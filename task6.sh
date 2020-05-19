#!/bin/bash
flagC=0
flagS=0
list=$@
string=$@
char="*"
for arg in $@ ; do
	if [ $flagC = 1 ] ; then
		char=$arg
		list=${list[@]/-c/}
		list=${list[@]/$char/}
		flagC=0
	elif [ $flagS = 1 ] ; then
		string=${arg:0}
		list=${list[@]/-s/}
		flagS=0
	elif [ $arg == "-c" ] ; then
		flagC=1
	elif [ $arg == "-s" ] ; then
		flagS=1
	fi
done

length=${#list}
count=1
printf "${char}${char}"
while [ $count -le $length ] ; do
	 printf "${char}"
	 count=$(($count + 1))
done
echo "${char}${char}"
echo "${char} "$list" ${char}"
printf "${char}${char}"
count=1;
while [ $count -le $length ] ; do
	 printf "${char}"
	 count=$(($count + 1))
done
echo "${char}${char}"

