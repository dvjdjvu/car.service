#!/bin/bash

DEB=deb
BUILD_DIR=.

PATH_DEB=$DEB/usr/lib/systemd/system/
PATH_CAR=$DEB/usr/local/car

chmod 755 $DEB/*

rm -r $PATH_DEB
mkdir -p $PATH_DEB

rm -r $PATH_CAR
mkdir -p $PATH_CAR/bin/

cp -r --parents car.service $PATH_DEB/

cp -r --parents bin/*.sh $PATH_CAR/

dpkg-deb --build $DEB $BUILD_DIR
