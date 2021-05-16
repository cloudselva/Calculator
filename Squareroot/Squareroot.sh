#!/bin/sh

echo "SQUAREROOT"
echo "Enter the Number :"
read NUMBER

SQUAREROOT=`echo "scale=4; sqrt($NUMBER)" | bc`
echo "The Squareroot Of Number is "
echo "$SQUAREROOT"

