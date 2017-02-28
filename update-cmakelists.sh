#!/bin/bash

make clean
rm CMakeFiles -rf >/dev/null

cmake \
	-DBUILD_CLIENT=1 \
	-DBUILD_CLIENT_SMP=1 \
	-DBUILD_SERVER=1 \
	-DBUILD_GAME_SO=0 \
	-DBUILD_GAME_QVM=0 \
	-DUSE_SDL=1 \
	-DUSE_OPENAL=0 \
	-DUSE_CURL=1 \
	-DUSE_CODEC_VORBIS=0 \
	-DUSE_SSE=1 \
	-DUSE_ALTGAMMA=1 \
	-DUSE_AUTH=1 \
	-USE_DEMO_FORMAT42=1 \
	-DBUILD_DIR="build" \
	-DBD="${BUILD_DIR}/debug" \
	-DBR="${BUILD_DIR}/release" \
	-DCDIR="code/client" \
	-DSDIR="code/server" \
	-DRDIR="code/renderer" \
	-DCMDIR="code/qcommon" \
	-DUDIR="code/unix" \
	-DW32DIR="code/win32" \
	-DSYSDIR="code/sys" \
	-DGDIR="code/game" \
	-DCGDIR="code/cgame" \
	-DBLIBDIR="code/botlib" \
	-DNDIR="code/null" \
	-DUIDIR="code/ui" \
	-DQ3UIDIR="code/q3_ui" \
	-DJPDIR="code/jpeg-6" \
	-DLOKISETUPDIR="code/setup" \
	-DTOOLSDIR="code/tools" \
	-DSDLHDIR="code/SDL12" \
	-DLIBSDIR="code/libs" \
	-DARCH="x86_64" \
CMakeLists.txt

CFLAGS="-march=native -O3 -pipe -I. -I/usr/include/ -fPIC"
LDFLAGS="-lpthread -ldl -lm -lX11 -lXxf86vm -lvorbisfile -lvorbis -logg -shared -lXxf86dga"

CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" make -j6
