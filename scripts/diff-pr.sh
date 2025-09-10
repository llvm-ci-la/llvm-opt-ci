#!/bin/bash

BEFORE_BRANCH=pr-$PR_ID-before
AFTER_BRANCH=pr-$PR_ID-after

rm -rf $RESULTS_DIR
mkdir -p $RESULTS_DIR


git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

# BEFORE
git checkout -b $BEFORE_BRANCH

cd $BUILDS_DIR
diff -rq before/ after/ | rg differ | awk '{print $2}' | while read -r file; do
    dest="$RESULTS_DIR/${file#before/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add -A
git commit -m "files before pr $PR_ID"
git push --set-upstream origin $BEFORE_BRANCH


# AFTER
git checkout -b $AFTER_BRANCH

cd $BUILDS_DIR
diff -rq before/ after/ | rg differ | awk '{print $4}' | while read -r file; do
    dest="$RESULTS_DIR/${file#after/}"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
done

cd $RESULTS_DIR
git add -A
git commit -m "files after pr $PR_ID"
git push --set-upstream origin $AFTER_BRANCH


# PR
git checkout main

echo "Link: https://github.com/llvm/llvm-project/pull/$PR_ID" >> body.txt
echo "Requested by: @$GH_ISSUE_AUTHOR" >> body.txt
echo "Flag: $FLAG" >> body.txt

PR_URL=$(gh pr create \
    --title "LLVM optimization on PR $PR_ID [bot]" \
    --body-file body.txt \
    --base $BEFORE_BRANCH \
    --head $AFTER_BRANCH)

rm -rf body.txt

echo "PR_URL=$PR_URL" >> $GITHUB_OUTPUT