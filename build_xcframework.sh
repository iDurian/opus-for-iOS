#!/bin/bash

rm -rf build/
mkdir build 
cd build 

cmake .. -DPLATFORM=OS -DCMAKE_BUILD_TYPE=Release --toolchain=../ios.toolchain.cmake -DDEPLOYMENT_TARGET=9.0
cmake --build .
