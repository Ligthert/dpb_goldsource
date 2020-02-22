#!/bin/sh
if  test `uname -s` = Linux ; then
make pb_i686.so CC=gcc-4.6 CPP=g++-4.6 OSFLAGS="-m32 -fPIC -Dstricmp=strcasecmp -Dstrnicmp=strncasecmp"
else
make pb.dll CC=gcc CPP=g++ OSFLAGS="-DWIN32 -D_WINDOWS"
fi
