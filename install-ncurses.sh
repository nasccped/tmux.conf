#!/bin/sh

if [ ! -d "./unpacked" ]; then
	mkdir "./unpacked";
fi

tar -zxf tars/ncurses.tar.gz -C "./unpacked/"
cd ./unpacked/ncurses-*
./configure --prefix=$HOME/local --with-shared --with-termlib --enable-pc-files --with-pkg-config-libdir=$HOME/local/lib/pkgconfig
make && make install
cd ../..
