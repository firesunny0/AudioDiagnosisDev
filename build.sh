#!/bin/bash
# backup 
exec_dir=$(pwd)

# change to shell directory
cur_dir=$(cd $(dirname $0); pwd)
cd $cur_dir

# run script
cd ./build
cmake ..
make -j 4

# return exec_dir
cd $exec_dir