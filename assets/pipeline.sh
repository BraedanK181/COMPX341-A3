#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please pass a commit header as an argument"
    exit
fi

npm install

#Conduct maintenance on files
sed -i '.ts' 's/#Braedan Kennett, 1541570/g' *

if npm run build; then
  echo "build succeded"
else
  echo "build failed"
  exit
fi

git add .

git commit -m "$1"

git push
