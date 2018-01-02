#!/bin/bash
# Original script by Steffen, adapted by David


for file in ./*
 do
 if [ -d $file ]
  then
  cd $file	
  #echo $PWD
  #git pull
  dirname=${PWD##*/}
  echo "git clone" $(git config --get remote.origin.url) $dirname
  cd ..
 fi
done
