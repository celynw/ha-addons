#!/bin/sh
# shellcheck disable=SC2015
set -e

# Install bash if not available
if ! command -v bash >/dev/null 2>/dev/null; then
	(apk add --no-cache bash) >/dev/null
fi

# Install curl if not available
if ! command -v curl >/dev/null 2>/dev/null; then
	(apk add --no-cache curl) >/dev/null
fi

# Install ca-certificates if not available
apk add --no-cache ca-certificates >/dev/null || true

# Create folder for scripts
mkdir -p /etc/cont-init.d
chmod -R 755 /etc/cont-init.d
