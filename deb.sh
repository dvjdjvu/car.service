#!/bin/bash

DEB=deb
BUILD_DIR=.

PATH_DEB=$DEB/usr/lib/systemd/system/

chmod 755 $DEB/*

rm -r $PATH_DEB
mkdir -p $PATH_DEB

cp -r --parents car.service $PATH_DEB/

dpkg-deb --build $DEB $BUILD_DIR
