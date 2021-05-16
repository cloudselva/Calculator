#!/bin/sh

echo "MODULUS"
echo "Enter the Number01"
read NUMBER01
echo "Enter the Number02"
read NUMBER02

MOD=`expr $NUMBER01 % $NUMBER02`

echo "The Modulus Of Two Numbers "
echo "$MOD"


