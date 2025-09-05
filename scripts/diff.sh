#!/bin/bash

BEFORE_BRANCH=pr-$1-before
AFTER_BRANCH=pr-$1-after

rm -rf $RESULTS_DIR
mkdir -p $RESULTS_DIR


# before branch
git checkout -b $BEFORE_BRANCH

cd $BUILD_DIRS
diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
    dest="$RESULTS_DIR/${file#before/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add .
git commit -m "files before pr $1"
git push --set-upstream origin $BEFORE_BRANCH


# after branch
git checkout -b $BEFORE_BRANCH

cd $BUILD_DIRS
diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
    dest="$RESULTS_DIR/${file#after/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add .
git commit -m "files after pr $1"
git push --set-upstream origin $AFTER_BRANCH