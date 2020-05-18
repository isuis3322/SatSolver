#!/bin/bash

test -e "./build" || mkdir ./build
cd ./build

cmake -DENABLE_CLANG_TIDY:BOOL=TRUE -DENABLE_CPPCHECK:BOOL=TRUE -DENABLE_TESTING:BOOL=FALSE ../
cmake --build .

cd ..
