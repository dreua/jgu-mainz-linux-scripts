#!/bin/bash
# Original script by Steffen, adapted by David

if [ $# != 2 ]
 then
 echo "please specifiy the file to add and the commit message"
 exit
fi

for file in ./*
 do
 if [ -d $file ]
  then
  cd $file	
  echo $PWD
  git add $1
  git commit -m "$2"
  cd ..
 fi
done
