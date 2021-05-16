#!/bin/sh

echo "SUBTRACTION"

echo "Enter the Number01"
read NUMBER01
echo "Enter the Number02"
read NUMBER02

SUB=`expr $NUMBER01 - $NUMBER02`

echo "The Subtraction Of Two Numbers "
echo "$SUB"



