#!/bin/sh

cd klusolve
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../dist ..
git submodule update --init
make
make install
cd ..
rm -rf build