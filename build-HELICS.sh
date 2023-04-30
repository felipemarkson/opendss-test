#!/bin/sh

nprocs=$(($(eval nproc) - 1))

cd HELICS-src
mkdir -p build
cd build
cmake -DBUILD_SHARED_LIBS=ON -DHELICS_DISABLE_BOOST=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../dist ..
git submodule update --init
make -j$nprocs && make install
cd ..
rm -rf build