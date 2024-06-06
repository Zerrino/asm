#!/bin/bash
for f in *.dmp ; do
    a=`basename $f .dmp`
    rm $a
done
