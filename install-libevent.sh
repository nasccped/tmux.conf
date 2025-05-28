#!/bin/sh

if [ ! -d "./unpacked" ]; then
	mkdir "./unpacked";
fi

tar -zxf tars/libevent-*.tar.gz -C "./unpacked"
cd ./unpacked/libevent-*
./configure --prefix=$HOME/local --enable-shared
make && make install
cd ../..
