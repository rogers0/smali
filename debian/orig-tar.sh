#!/bin/sh

set -e

PKG=smali

VERSION=$2
DIR=${PKG}-${VERSION}
TAR=../${PKG}_${VERSION}.orig.tar.xz

tar -xf $3
rm $3
XZ_OPT=--best tar -c -v -J -f $TAR \
	--exclude 'gradlew*' \
	--exclude 'gradle/wrapper' \
	--exclude '*.jar' \
	$DIR
rm -Rf $DIR
