#!/bin/bash

CURRENT_BRANCH=pr-$1-$2

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

git checkout -b $CURRENT_BRANCH

mkdir -p $RESULTS_DIR

cd $BUILDS_DIR

if [ "$2" = "before" ]; then
    diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
        dest="$RESULTS_DIR/${file#before/}"
        mkdir -p "$(dirname "$dest")"
        cp "$file" "$dest"
    done
elif [ "$2" = "after" ]; then
    diff -rq before/ after/ | rg differ | awk '{print $4}' | while read -r file; do
        dest="$RESULTS_DIR/${file#after/}"
        mkdir -p "$(dirname "$dest")"
        cp "$file" "$dest"
    done
fi

cd $RESULTS_DIR
git add .
git commit -m "files $2 pr $1"