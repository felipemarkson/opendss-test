#!/bin/sh
nprocs=$(($(eval nproc) - 1))

cd linenoise-ng
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../dist ..
git submodule update --init
make -j$nprocs && make install
cd ..
rm -rf build