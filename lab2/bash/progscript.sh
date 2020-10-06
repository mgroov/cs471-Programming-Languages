#!/bin/sh

#Matthew Groover
#9-9-20
# this program tests the bash func for short circuit

I=1

#testing false first

echo "testing with false first then echo"
if [ $I -eq 0 ] && echo "stage 4 achieved"; then
   echo "true"
else
   echo "false"
fi

#testing echo going first 

echo "testing with echo first"
if  echo "stage 5 achieved" && [ $I -eq 0 ]; then
   echo "true"
else
   echo "false"
fi
