#!/bin/bash

image=mhiroaki/adata-sf-ssd-fw-updater

DIR="$(readlink -f "$1")"
XOPTS=( -e DISPLAY )
if [[ -n ${DISPLAY%%:*} ]]; then
  XOPTS+=( --net=host -v $HOME/.Xauthority:/root/.Xauthority:ro )
else
  XOPTS+=( -v /tmp/.X11-unix/:/tmp/.X11-unix:rw )
fi

set -x
docker run --rm -it "${XOPTS[@]}" -v "$DIR:/work:ro" --privileged $image
