#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please pass a commit header as an argument"
    exit
fi

#npm install

#Conduct maintenance on files
for f in `find . -type f -name "*.ts"`
do
  sed '1 i //Braedan Kennett 1541570' $f
  #sed -i '1s/^/<//Braedan Kennett 1541570> /'
done

if npm run build; then
  echo "build succeded"
else
  echo "build failed"
  exit
fi

git add .

git commit -m "$1"

git push
