#!/bin/sh

mkdir -p linenoise-dist
cd linenoise-ng
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../linenoise-dist ..
git submodule update --init
make
make install
cd ..
rm -rf build