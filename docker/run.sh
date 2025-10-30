#!/bin/bash -eux
exec podman run --rm -it --workdir /linuxcnc/src --volume "$PWD/../build/linuxcnc:/linuxcnc" linuxcnc /build-linuxcnc.sh
