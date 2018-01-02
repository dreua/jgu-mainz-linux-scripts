#!/bin/bash
# Original script by Steffen, adapted by David

echo "!!! This will delete and/or change files and there is no way to undo!!"

read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        # do nothing
        ;;
    *)
		exit
        ;;
esac

for file in ./*
 do
 if [ -d $file ]
  then
  cd $file	
  echo $PWD
  git reset --hard
  git clean -f
  cd ..
 fi
done
