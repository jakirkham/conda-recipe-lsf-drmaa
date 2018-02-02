#!/bin/bash

# Code requires C99 due to some `//` comments.
# Possibly other things as well.
export CFLAGS="${CFLAGS} -std=c99"

# Hack to workaround doc build issues.
ln -s "${SRC_DIR}/README.md" "${SRC_DIR}/README"

# Last bit tells about configure failures should they occur.
./configure \
	--prefix="${PREFIX}" \
	--with-lsf-static \
	--with-pic \
	--enable-shared \
	--enable-static \
	--disable-debug \
	--disable-development \
	--with-gnu-ld \
|| { cat config.log; exit 1; }

make
# No real `make check`. So just install.
make install
