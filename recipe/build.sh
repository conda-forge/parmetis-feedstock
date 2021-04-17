#!/bin/bash

# for cross compiling with openmpi
export OPAL_PREFIX=$PREFIX

make config \
     shared=1 \
     prefix=$PREFIX

make
make install
