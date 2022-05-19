#!/bin/bash

#npm install

if npm run build; then
  echo "build succeded"
else
  echo "build failed"
  exit
fi

git add .

git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"

git push --force

#git push -m "braedan181@gmail.com" "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"

#npm run start

#git push -m "braedan181@gmail.com" "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"
