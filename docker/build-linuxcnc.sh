#!/bin/bash -eux
./autogen.sh
./configure --disable-userspace-pci --enable-non-distributable=yes
make -j16
make setuid
