#!/bin/bash
var123=$( otool -l test/a.out | grep __stub_helper -5 | grep addr | awk '{ print $2 }' )

var4=$(expr $(($var123)) - 4294967296)
var5=$(expr $var4 + 3)
var6=$(expr $var5 + 2)

echo $var5

vim -c "goto $var5" -c 'execute "normal! r" . nr2char(235)' -c "goto $var6" -c 'execute "normal! r" . nr2char(254)' -c 'wq' $1
