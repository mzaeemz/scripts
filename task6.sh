#!/bin/bash
#flag to store if -c option is passed
flagC=0
#flag to store if -s option is passed
flagS=0
#list stores all arguments
list=$@
#stores the string (if -s is passed)
string=$@
#stores the box character (by default '*')
char="*"
for arg in $@ ; do
	#if -c was passed as previous argument
		if [ $flagC = 1 ] ; then
		char=$arg
		#omit -c from list
		list=${list[@]/-c/}
		#omit the character from list
		list=${list[@]/$char/}
		flagC=0
	#if -s was passed as previous argument
	elif [ $flagS = 1 ] ; then
		string=${arg:0}
		#omit -s from list
		list=${list[@]/-s/}
		flagS=0
	#if current arg is -c turn flagC on
	elif [ $arg == "-c" ] ; then
		flagC=1
	
	#if current arg is -c turn flagS on
	elif [ $arg == "-s" ] ; then
		flagS=1
	fi
done
#store length of list
length=${#list}
count=1
#print two entra characters before
printf "${char}${char}"
#print the line of characters
while [ $count -le $length ] ; do
	 printf "${char}"
	 count=$(($count + 1))
done

#print two entra characters after
echo "${char}${char}"
echo "${char} "$list" ${char}"
printf "${char}${char}"
count=1;
#print the bottom line of character
while [ $count -le $length ] ; do
	 printf "${char}"
	 count=$(($count + 1))
done
echo "${char}${char}"

