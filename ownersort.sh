#!/bin/bash

share=/users

for file in *
  do
    if [ -e $file ]
      then
      owner=$(stat -c '%U' $file)
      mkdir /$share/$owner
      cp $file $share/$owner
      chown -R $owner:$owner $share/$owner
      chown $owner:$owner $share/$owner/$file
    fi
  done
