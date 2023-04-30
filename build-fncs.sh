#!/bin/sh

mkdir -p fncs-dist
cd fncs
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../fncs-dist ..
make
make install
cd ..
rm -rf build