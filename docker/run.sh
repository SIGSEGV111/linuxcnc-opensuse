#!/bin/bash -eu
my_path="$(dirname "$(readlink -f "$0")")"
extra_args=()
if [[ -t 0 && -t 1 && -t 2 ]]; then
	extra_args+=("--interactive" "--tty")
fi
exec podman run --rm "${extra_args[@]}" --workdir /linuxcnc/docker --volume "$my_path/..:/linuxcnc" linuxcnc "$@"
