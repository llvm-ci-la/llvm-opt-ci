#!/bin/bash


if [ -z "$1" ]; then
    exit 1
fi

DST=$BUILDS_DIR/$1

rm -rf $DST
mkdir -p $DST

cd $BUILD_TS_DIR
fd -es -x rsync -R --ignore-existing {} $DST