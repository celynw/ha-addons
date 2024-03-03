#!/bin/sh
# shellcheck disable=SC2015
set -e

# Install packages
apk add --no-cache bash >/dev/null
apk add --no-cache curl >/dev/null
apk add --no-cache ca-certificates >/dev/null
apk add --no-cache jq >/dev/null
apk add --no-cache nginx >/dev/null

# Create folder for scripts
mkdir -p /etc/cont-init.d
chmod -R 755 /etc/cont-init.d
