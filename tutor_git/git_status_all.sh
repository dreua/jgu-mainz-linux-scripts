#!/bin/bash
# Original script by Steffen, adapted by David


for file in ./*
 do
 if [ -d $file ]
  then
  cd $file	
  echo $PWD
  git status
  cd ..
 fi
done
