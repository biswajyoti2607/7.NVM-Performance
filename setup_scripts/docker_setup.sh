#!/usr/bin/env bash
#Install PMDK
apt-get install libc6-dbg gdb valgrind
apt-get install autoconf
apt-get install pkg-config
git clone https://github.com/pmem/pmdk.git
cd pmdk
make
make install
cd ..
#Install PMDK Examples
apt-get install libboost-*
git clone https://github.com/pmem/pmdk-examples.git
cd pmdk-examples
make cpp_queue
make simple_grep
echo pmdk-examples is installed from GITHUB, Copy from HOST to obtain modified example and make again!
cd ..
#INSTALL PMEMKV
git clone https://github.com/pmem/pmemkv.git
cd pmemkv
make
make example
make bench
make install
cd ..
#Install perf
apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r` 
#Install iozone
apt-get install iozone3
#Install SNZIP
wget https://cmake.org/files/v3.11/cmake-3.11.1.tar.gz
tar -xvvf cmake-3.11.1.tar.gz
cd cmake-3.11.1
./bootstrap
make
make install
cd ..
git clone https://github.com/google/snappy.git
cd snappy
mkdir build cd build && cmake ../ && make && make install
cd ..
git clone https://github.com/kubo/snzip.git
cd snzip
./configure
make
make install
cd ..
