#!/bin/bash
#save result of ifconfig command containing local ip
result=`/sbin/ifconfig | grep 192`
#find the position of the start of ip
startIP=`expr index "$result" "192"`
#omit string before start of ip
result=${result:startIP - 1}
#find first space in resultant
spaceSecond=`expr index "$result" " "`
#cut the string upto first space to obtain ip
result=${result:0:spaceSecond}
echo $result
