#!/bin/bash

set -ex

git config user.email "rrvq@example.com"
git config user.name "rrvq"
wget -6 -O devmoe https://dev.moe/feed
wget -6 -O atri https://blog.atri.tk/atom.xml
wget -6 -O kiki https://kirikira.moe/rss/
git add .
git commit -m 'update'
git push
