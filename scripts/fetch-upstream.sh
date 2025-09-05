#!/bin/bash
echo "====== FETCH LLVM UPSTREAM START ******"
cd $LLVM_SRC_DIR
git checkout main
git clean -ffd 
git reset --hard HEAD
git pull
git log -1
echo "****** FETCH LLVM UPSTREAM END ======"

echo "====== FETCH TEST-SUITE UPSTREAM START ******"
cd $TS_SRC_DIR
git checkout main
git clean -ffd 
git reset --hard HEAD
git pull
git log -1
echo "****** FETCH TEST-SUITE UPSTREAM END ======"
