#!/bin/sh
#se suma todo el parametr

sum=0
for Z in $&
do
	sum=`expr $sum + $Z`
done
echo "$sum"

