#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Provide executable for sui'
    exit 0
fi

app=$( which $1 )

if [ $? -ne 0 ]; then
  echo "Unable to find $1 through which, passing direct"
  app=$1
fi

echo "水 $app"
chmod +s $app
