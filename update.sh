#!/bin/bash

set -ex

git config user.email "rrvq@example.com"
git config user.name "rrvq"
wget -6 -O devmoe https://dev.moe/feed
wget -6 -O atri https://blog.atri.tk/atom.xml

# this feed gets rebuild frequently, cmp print different bytes, less than 4(rebuild time) then ignore
wget -6 -O kiki-new https://kirikira.moe/rss/
if [ $(cmp -l kiki-new kiki | wc -l) -le 10 ]
then
    rm kiki-new
else
    mv kiki-new kiki
fi
       
git add .
git commit -m 'update'
git push
