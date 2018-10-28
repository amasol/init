#!/bin/bash
if [ -d $1 ]
then
    ls -lS $1
else
    echo "Path doesn't point to the existing directory"
fi
