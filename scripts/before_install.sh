#!/bin/bash

c=$(ls -l /var/www/html/ | wc -l)

if [ $c -gt 0 ]
then
  cd /var/www/html
  pm2 delete all
  rm -fr *
  rm -fr .git
else
  echo "Empty"
fi
