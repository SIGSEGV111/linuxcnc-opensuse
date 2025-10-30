#!/bin/bash -eu
source "/opt/amp-bash-commons//shell-util.sh"
my_path="$(dirname "$(readlink -f "$0")")"
sys_arch="$( (podman system info --format json | jq -r '.host.arch') || true)"
[[ -t 0 && -t 1 && -t 2 ]] && term=true || term=false
parseCommandlineArguments "i:interactive=boolean?$term" "a:arch=string?$sys_arch" -- "$@"

extra_args=()
if ((__interactive)); then
	extra_args+=("--interactive" "--tty")
fi

if [[ -n "$__arch" ]]; then
	extra_args+=("--arch" "$__arch")
fi

set -x
exec podman run \
	--rm \
	--volume "$my_path/..:/linuxcnc" \
	--workdir /linuxcnc/docker \
	--pull=never \
	"${extra_args[@]}" \
	localhost/linuxcnc:latest \
	"${__remaining_args[@]}"
