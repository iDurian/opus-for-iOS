#!/bin/bash

VERSION="1.3.1"
REPOROOT=$(pwd)
SRCDIR="${REPOROOT}/opus"

mkdir -p $SRCDIR

if [ ! -e "${SRCDIR}/opus-${VERSION}.tar.gz" ]; then
	echo "Downloading opus-${VERSION}.tar.gz"
    cd "${SRCDIR}"
	curl -LO http://downloads.xiph.org/releases/opus/opus-${VERSION}.tar.gz
fi
echo "Using opus-${VERSION}.tar.gz"

tar zxf ${SRCDIR}/opus-${VERSION}.tar.gz -C $SRCDIR

echo "DONE"
