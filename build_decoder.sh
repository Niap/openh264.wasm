
emcc -I. -I./openh264/codec/api/svc/ \
  -L./openh264/ \
  -o ./dist/decoder.js ./src/decoder.cpp \
  -lopenh264 \
  -s USE_SDL=0  \
  -s USE_PTHREADS=1 \
  -s INVOKE_RUN=0 \
  -s PTHREAD_POOL_SIZE=4 \
  -s EXPORTED_FUNCTIONS="[_open_decoder,_close_decoder,_decode_h264buffer,_decode_nal]" \
  -s EXPORTED_RUNTIME_METHODS="[cwrap, ccall]" \
  -s INITIAL_MEMORY=67108864 \
  -s EXIT_RUNTIME=1