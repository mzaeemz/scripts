#!/bin/bash

if [ $# -ge 2 ] ; then
	find $1 $2
elif [ $# -eq 1 ] ; then
	find $1 .
else
	echo "Invalid no of arguments"
fi

