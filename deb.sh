DEB=deb
BUILD_DIR=.

PATH=$DEB/usr/lib/systemd/system/

chmod 755 $DEB/*

rm -r $PATH
mkdir -p $PATH

cp -r --parents car.service $PATH/

dpkg-deb --build $DEB $BUILD_DIR




