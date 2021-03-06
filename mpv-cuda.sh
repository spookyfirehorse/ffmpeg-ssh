sudo apt build-dep mpv && cd ~/ffmpeg_sources  && \
git clone https://github.com/mpv-player/mpv.git && \
cd ~/ffmpeg_sources/mpv && \
./bootstrap.py  && ./waf configure  --enable-cuda-interop --enable-egl-drm --enable-gl-x11 --enable-egl --enable-sdl2    \
--enable-xv  --enable-egl-x11 --enable-libmpv-shared --enable-libplacebo --enable-vulkan  --enable-cuda-hwaccel --enable-ffmpeg-strict-abi --disable-libavdevice  \
./waf -j4 && sudo  ./waf install 
