#!/bin/bash -eu
source "/opt/amp-bash-commons//shell-util.sh"
my_path="$(dirname "$(readlink -f "$0")")"
parseCommandlineArguments "a:arch=string" -- "$@"
"$my_path/run.sh" --arch="$__arch" -- /bin/bash -c "
	set -eux
	cd ../src
	./autogen.sh
	./configure --disable-userspace-pci --enable-non-distributable=yes
	make -j16
	make setuid
"
