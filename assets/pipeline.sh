#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please pass a commit header as an argument"
    exit
fi

npm install

#Conduct maintenance on files
for f in `. -type f -name "*.ts"`
do
  $ sed -i '1s/^/<//Braedan Kennett, 1541570 > /' f
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
