#!/bin/bash
#find Ses* 
#var=&find Ses* |head -1
#printf "%s\n" "$var"
mkdir new
for myfile in `find Ses*`; do
myfile = 'find Ses*|head -1'
echo $myfile
grep Ses0 $myfile>temp
cut -f 2,3 temp>./new/$myfile
rm $myfile
done
mv new session5 
