#!/bin/sh
set -e

SRC=/src
SENTINEL=${SRC}/pyconfig.h.in

if [ ! -e ${SENTINEL} ]; then
    echo "ERROR: ${SENTINEL} not found "
    echo "Did you forget to mount Python work directory with '-v.:/src'?"
    echo
    echo "  docker run -v.:/src dongheena/cpython_autoconf"
    echo "  podman run -v.:/src:Z dongheena/cpython_autoconf"
    exit 2
fi

if [ "$#" = "0" ]; then
    echo "Rebuilding configure script using $(autoconf --version | head -n 1)"
    exec gosu autoreconf -ivf -Werror $@
fi

exec "$@"