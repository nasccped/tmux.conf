#!/bin/sh

if [ ! -d "./unpacked" ]; then
	mkdir "./unpacked";
fi

tar -zxf tars/tmux-*.tar.gz -C "./unpacked"
cd ./unpacked/tmux-*
PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig ./configure --prefix=$HOME/local
make && make install
