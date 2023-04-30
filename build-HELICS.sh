#!/bin/sh

mkdir -p HELICS-dist
cd HELICS-src
mkdir -p build
cd build
cmake -DBUILD_SHARED_LIBS=ON -DHELICS_DISABLE_BOOST=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../HELICS-dist ..
git submodule update --init
make -j4
make install
cd ..
rm -rf build