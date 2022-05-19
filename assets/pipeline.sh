#!/bin/bash

npm install

if npm run build; then
  echo "build succeded"
else
  echo "build failed"
  exit
fi

git add .

git commit -m "$1"

git push
