#!/usr/bin/bash
set -e

if [ -d "build" ]; then
    rm -r build
fi

mkdir build
cd build

../configure CFLAGS="-D_GNU_SOURCE -O2" --prefix="$(pwd)/install"
make
make install
