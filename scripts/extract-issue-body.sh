#!/bin/bash

PR_ID=$(echo $GH_ISSUE_BODY | rg -o 'pr=(\d+)' -r '$1')
FLAG=$(echo $GH_ISSUE_BODY | rg -o 'flag=([^ ]+(?: [^ ]+)*)' -r '$1')

echo "PR_ID=$PR_ID" >> $GITHUB_OUTPUT
echo "FLAG=$FLAG" >> $GITHUB_OUTPUT