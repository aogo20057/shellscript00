#!/bin/bash

echo -n "Enter Your Filenmae : "
read FILE1

# echo $FILE
if [ -x $FILE1 ] ; then
    $FILE1
fi
  


