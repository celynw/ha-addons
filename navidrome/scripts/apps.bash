#!/bin/bash
set -e

# Init ---------------------------------------------------------------------------------
VERBOSE=false
# Avoid fails on non declared variables
set +u 2>/dev/null || true
# If no packages, empty
PACKAGES="${*:-}"
# Avoids messages if non interactive
(echo "debconf debconf/frontend select Noninteractive" | debconf-set-selections) &>/dev/null || true

# Install Manual Apps ------------------------------------------------------------------
# # Install micro texteditor
# curl https://getmic.ro | bash
# mv micro /usr/bin
# micro -plugin install bounce
# micro -plugin install filemanager

for file in "/etc/services.d" "/etc/cont-init.d"; do
	# Next directory if does not exist
	if ! ls $file 1>/dev/null 2>&1; then continue; fi

	# Bashio
	if grep -q -rnw "$file/" -e "bashio" && [ ! -f "/usr/bin/bashio" ]; then
		[ "$VERBOSE" = true ] && echo "install bashio"
		BASHIO_VERSION="0.14.3"
		mkdir -p /tmp/bashio
		curl -f -L -s -S "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" | tar -xzf - --strip 1 -C /tmp/bashio
		mv /tmp/bashio/lib /usr/lib/bashio
		ln -s /usr/lib/bashio/bashio /usr/bin/bashio
		rm -rf /tmp/bashio
	fi
done
