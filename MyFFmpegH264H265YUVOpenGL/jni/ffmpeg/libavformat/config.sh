#!/bin/bash
export TMPDIR=F:/temp
PREBUILT=F:/cygwin64/android-ndk-r8/toolchains/arm-linux-androideabi-4.4.3/prebuilt/windows
PLATFORM=F:/cygwin64/android-ndk-r8/platforms/android-8/arch-arm
./configure --enable-memalign-hack \
--target-os=linux \
--arch=arm \
--enable-version3 \
--enable-gpl \
--enable-nonfree \
--enable-shared \
--disable-doc \
--disable-stripping \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffserver \
--disable-ffprobe \
--disable-avdevice \
--disable-network \
--disable-swresample \
--disable-zlib \
--enable-avfilter \
--enable-avcodec \
--enable-avformat \
--enable-swscale \
--enable-postproc \
--disable-everything \
--enable-encoder=h263 \
--enable-encoder=mp2 \
--enable-encoder=mpeg2video \
--enable-encoder=mpeg4 \
--enable-encoder=rawvideo \
--enable-encoder=libmp3lame \
--enable-encoder=libx264 \
--enable-muxer=h263 \
--enable-muxer=mp2 \
--enable-muxer=mp3 \
--enable-muxer=mp4 \
--enable-muxer=matroska \
--enable-muxer=matroska_audio \
--enable-muxer=mpeg2dvd \
--enable-muxer=mpeg2sdvd \
--enable-muxer=mpeg2video \
--enable-muxer=mpeg2vob \
--enable-muxer=mpegts \
--enable-muxer=rawvideo \
--enable-hwaccels \
--enable-bsfs \
--enable-protocol=file \
--enable-libmp3lame \
--enable-libx264 \
--disable-debug \
--enable-cross-compile \
--cc=$PREBUILT/bin/arm-linux-androideabi-gcc-4.4.3 \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--nm=$PREBUILT/bin/arm-linux-androideabi-nm \
--ar=$PREBUILT/bin/arm-linux-androideabi-ar \
--extra-cflags="-I$PLATFORM/usr/include -fPIC -DANDROID" \
--disable-asm \
--extra-ldflags="-Wl,-T,$PREBUILT/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x -W1,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib $PREBUILT/lib/gcc/arm-linux-androideabi/4.4.3/crtbegin.o $PREBUILT/lib/gcc/arm-linux-androideabi/4.4.3/crtend.o -lc -lm -ldl"