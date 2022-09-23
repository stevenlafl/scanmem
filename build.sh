docker build -t stevenlafl/scanmem .

# docker run -it --name scanmem --cap-add SYS_ADMIN --privileged --device /dev/fuse stevenlafl/scanmem /bin/bash
#   flatpak-builder --user --install build-dir org.scanmem.gameconqueror.yml