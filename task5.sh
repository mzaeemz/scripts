#!/bin/bash
#store the string passed
string=$@
#store length of string
length=${#string}
count=1
#print the upper line of special characters
printf "**"
while [ $count -le $length ] ; do
	 printf "*"
	 count=$(($count + 1))
done
echo "**"
#print the string
echo "* $string *"
printf "**"
count=1;

#print the bottom line of special characters
while [ $count -le $length ] ; do
	 printf "*"
	 count=$(($count + 1))
done
echo "**"

