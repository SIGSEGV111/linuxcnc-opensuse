#!/bin/bash -eux
my_path="$(dirname "$(readlink -f "$0")")"
"$my_path/run.sh" /bin/bash -c "
	cd ../src
	./autogen.sh
	./configure --disable-userspace-pci --enable-non-distributable=yes
	make -j16
	make setuid
"
