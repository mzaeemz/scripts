#!/bin/bash

#check if both directory and filename are given
if [ $# -ge 2 ] ; then
	find $1 $2
#check if only filename is give (search in pwd)
elif [ $# -eq 1 ] ; then
	find $1 .
#cant work with zero arguments
else
	echo "Invalid no of arguments"
fi

