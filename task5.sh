#!/bin/bash
string=$@
length=${#string}
count=1
printf "**"
while [ $count -le $length ] ; do
	 printf "*"
	 count=$(($count + 1))
done
echo "**"
echo "* $string *"
printf "**"
count=1;
while [ $count -le $length ] ; do
	 printf "*"
	 count=$(($count + 1))
done
echo "**"

