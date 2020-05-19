#!/bin/bash
result=`/sbin/ifconfig | grep 192`
spaceFirst=`expr index "$result" "192"`
result=${result:spaceFirst - 1}
spaceSecond=`expr index "$result" " "`
result=${result:0:spaceSecond}
echo $result
