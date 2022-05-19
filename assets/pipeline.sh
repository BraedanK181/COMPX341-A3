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
#git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"

git push
