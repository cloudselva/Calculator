#!/bin/sh
I="y"
while [ $I = "y" ]
do

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "++                                                      SELVA CALCULATOR                                                       ++"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " ________________________________________________________________________________________________________________________________"
echo "|------------------------------------------------------------------------------------------------------------------------------- |"
echo "|--                                       OPTIONS                                                                             -- |"
echo "|--                                      1.ADDITION                                                                           -- |"
echo "|--                                      2.SUBTRACTION                                                                        -- |"
echo "|--                                      3.MUTIPLOCATION                                                                      -- |"
echo "|--                                      4.DIVISION                                                                           -- |"
echo "|--                                      5.MODULUS                                                                            -- |"
echo "|--                                      6.SQUAREROOT                                                                         -- |"
echo "|------------------------------------------------------------------------------------------------------------------------------- |"
echo "|________________________________________________________________________________________________________________________________|"

echo "Enter the choice : "

read CHOICE 

case $CHOICE in

	1)echo "******************************"
          echo "**       ADDITION           **"
          echo "******************************"
          echo "Enter The Numbers of Element to Add : "
          read NUMBERS
          i=0
          SUM=0
          echo "Enter the Numbers : "
          while [ $i -lt $NUMBERS ]
          do
 	 	read NUMBER
		SUM=`expr $SUM + $NUMBER`
		i=`expr $i + 1`
	 done
	 echo "********************************"
	 echo "**     SUM OF NUMBERS         **"
         echo "**         $SUM               **"
	 echo "********************************";;
         

         2)echo "*******************************"
           echo "**     SUBTRACTION           **"
           echo "*******************************"
        	   
           echo "Enter the First Number : "
           read NUMBER01
           echo "Enter the Second Number :  "
           read NUMBER02

           SUB=`expr $NUMBER01 - $NUMBER02`
          
	   echo "******************************"
	   echo "**SUBTRACTION OF TWO NUMBERS**"
	   echo "**       $SUB               **"
	   echo "******************************";;


	  3)echo "******************************"
	    echo "**   MULTIPLICATION         **"
	    echo "******************************"

	    echo "Enter the First Number : "
            read NUMBER01
            echo "Enter the Second Number : "
            read NUMBER02

	    MUL=`expr $NUMBER01 \* $NUMBER02`

	    echo "********************************"
	    echo "**MUTIPLICATION OF TWO NUMBERS**"
	    echo "**       $MUL                 **"
      	    echo "********************************";;

          4)echo "*******************************"
	    echo "**        DIVISION 	       **"
	    echo "*******************************"

	    echo "Enter the First Number : "
            read NUMBER01
            echo "Enter the Second Number : "
            read NUMBER02

	    DIV=`expr $NUMBER01 / $NUMBER02`

	    echo "******************************"
	    echo "**  DIVISION OF TWO NUMBERS **"
	    echo "**        $DIV              **"
	    echo "******************************";;

	  5)echo "******************************"
	    echo "**       MODULUS            **"
            echo "******************************"
            
            echo "Enter the First Number :  "
            read NUMBER01
            echo "Enter the Second Number : "
            read NUMBER02
            
	    MOD=`expr $NUMBER01 % $NUMBER02`

	    echo "******************************"
	    echo "**  MODULUS OF TWO NUMBERS  **"
            echo "**       $MOD               **"
	    echo "******************************";;

          6)echo "******************************"
	    echo "**       SQUARE ROOT        **"
	    echo "******************************"

	    echo "Enter the Number : "
	    read NUMBER
            
	    SQUAREROOT=`echo "scale=4; sqrt($NUMBER)" | bc`

            echo "******************************"
	    echo "**  SQUARE ROOT OF NUMBER   **"
            echo "**    $SQUAREROOT           **"
	    echo "******************************";;

          *)echo "******************************"
	    echo "**    INVALID CHOICE 	      **"
	    echo "******************************"
esac
       echo ""
       echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
       echo "^^ Do You Want To Continue ^^"
       echo "^^ y for continue          ^^"
       echo "^^ n for abort             ^^"
       echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
       read I
       if [ $I != "y" ]
       then 
	       exit
       fi
done
