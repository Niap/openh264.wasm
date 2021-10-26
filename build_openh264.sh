cd openh264
git clean -xdf
#git checkout v2.1.0
CFLAGS="-s USE_PTHREADS=1 -O3 -msimd128 -fno-stack-protector"
LDFLAGS="$CFLAGS" 
CFLAGS=${CFLAGS} CXXFLAGS=${CFLAGS} LDFLAGS=${LDFLAGS} emmake make libopenh264.a OS=linux ARCH=asmjs