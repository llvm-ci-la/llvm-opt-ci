#!/bin/bash

CURRENT_BRANCH=pr-$1-$2

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

git checkout -b $CURRENT_BRANCH

mkdir -p $RESULTS_DIR

cd $BUILDS_DIR
diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
    dest="$RESULTS_DIR/${file#$2/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add .
git commit -m "files $2 pr $1"