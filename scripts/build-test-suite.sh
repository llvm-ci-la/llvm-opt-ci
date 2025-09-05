#!/bin/bash


rm -rf $BUILD_TS_DIR
mkdir -p $BUILD_TS_DIR

cd $BUILD_TS_DIR
cmake $TS_SRC_DIR  -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=$BUILD_LLVM_DIR/bin/clang \
    -DCMAKE_CXX_COMPILER=$BUILD_LLVM_DIR/bin/clang++ \
    -DCMAKE_C_FLAGS_RELEASE="-fuse-ld=mold -save-temps=obj -w -Wno-unused-command-line-argument -DNDEBUG -Qn -Wno-builtin-macro-redefine $FLAG"  \
    -DCMAKE_CXX_FLAGS_RELEASE="-fuse-ld=mold -save-temps=obj -w -Wno-unused-command-line-argument -DNDEBUG -Qn -Wno-builtin-macro-redefine $FLAG"  \
    -G Ninja

ninja