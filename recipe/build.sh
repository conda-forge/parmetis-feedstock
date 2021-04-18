#!/bin/bash

# for cross compiling with openmpi
export OPAL_PREFIX=$PREFIX
export CC=mpicc
export CXX=mpicxx

mkdir -p build
cd build
cmake ${CMAKE_ARGS} \
  -DGKLIB_PATH=$SRC_DIR/metis/GKlib \
  -DMETIS_PATH=$SRC_DIR/metis \
  -DSHARED=1 \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  ..

make -j${CPU_COUNT}
make install
