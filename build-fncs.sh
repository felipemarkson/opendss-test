#!/bin/sh
nprocs=$(($(eval nproc) - 1))

cd fncs
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../dist ..
make -j$nprocs && make install
cd ..
rm -rf build