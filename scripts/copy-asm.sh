#!/bin/bash


if [ -z "$1" ]; then
    exit 1
fi

DST=$BUILD_DIRS/$1

rm -rf $DST
mkdir -p $DST

cd $BUILD_TS_DIR
fd -es -x cp --parents {} $DST