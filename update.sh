#!/bin/bash

set -ex

git config user.email "rrvq@example.com"
git config user.name "rrvq"
wget -6 -nc -O devmoe https://dev.moe/feed
wget -6 -nc -O atri https://blog.atri.tk/atom.xml
git add .
git commit -m 'update'
#git push
