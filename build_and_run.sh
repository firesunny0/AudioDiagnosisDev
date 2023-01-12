#!/bin/bash

exec_dir=$(pwd)

cur_dir=$(cd $(dirname $0); pwd)

cd $cur_dir

./build.sh
./bin/on_k210


cd $exec_dir
