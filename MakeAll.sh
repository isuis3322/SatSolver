#!/bin/bash

test -e "./build" || mkdir ./build
cd ./build
cmake -DENABLE_CLANG_TIDY:BOOL=FALSE -DENABLE_CPPCHECK:BOOL=FALSE -DENABLE_TESTING:BOOL=TRUE ../
cmake --build .
ctest
cd ..
