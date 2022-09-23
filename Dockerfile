FROM archlinux:base-devel-20220918.0.86346

RUN pacman -Sy --noconfirm flatpak

RUN pacman -Sy --noconfirm flatpak-builder

RUN flatpak install -y flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08

RUN mkdir -p /app/scanmem
COPY ./ /app/scanmem
WORKDIR /app

RUN rm scanmem/Dockerfile scanmem/build.sh && mv scanmem/org.scanmem.gameconqueror.yml org.scanmem.gameconqueror.yml 

# flatpak-builder build-dir org.scanmem.gameconqueror.yml
# flatpak build-export export build-dir
# flatpak build-bundle export gameconqueror.flatpak org.scanmem.gameconqueror
# flatpak-builder --user --install build-dir org.scanmem.gameconqueror.yml
# flatpak --verbose run org.scanmem.gameconqueror