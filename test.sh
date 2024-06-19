#!/bin/bash

for i in $(seq 10)
do 
    echo $i
done

i=1
while [ $i -le 10 ]
do
    echo $i
    i=$(expr $i + 1)
done
