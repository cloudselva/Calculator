#!/bin/sh

echo "ADDITION"
echo "Enter the Number of Numbers to add"
read NUMBERS
i=0
SUM=0
echo "Enter the Numbers"
while [ $i -lt $NUMBERS ]
do
	read NUMBER
	SUM=`expr $SUM + $NUMBER`
	i=`expr $i + 1`
done

echo "THE SUM OF NUMBERS"
echo "$SUM"


