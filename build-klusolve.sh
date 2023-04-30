#!/bin/sh

mkdir -p klusolve-dist
cd klusolve
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../klusolve-dist ..
git submodule update --init
make
make install
cd ..
rm -rf build