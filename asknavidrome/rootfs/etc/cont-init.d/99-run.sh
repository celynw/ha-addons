#!/usr/bin/env bashio
set -e

# Export custom addon options as environment variables ---------------------------------
bashio::log.info "Setting variables"

# For all keys in options.json
JSONSOURCE="/data/options.json"

# Export keys as env variables
mapfile -t arr < <(jq -r 'keys[]' "${JSONSOURCE}")

for KEYS in "${arr[@]}"; do
	# export key
	VALUE=$(jq ."$KEYS" "${JSONSOURCE}")
	line="${KEYS}='${VALUE//[\"\']/}'"
	# text
	if bashio::config.false "verbose" || [[ "${KEYS}" == *"PASS"* ]]; then
		bashio::log.blue "${KEYS}=******"
	else
		bashio::log.blue "$line"
	fi
	# Use locally
	export "${KEYS}=${VALUE//[\"\']/}"
done

# Options
options=(
	"NAVI_SKILL_ID"
	"NAVI_URL"
	"NAVI_USER"
	"NAVI_PASS"
	"NAVI_SONG_COUNT"
	"NAVI_PORT"
	"NAVI_API_PATH"
	"NAVI_API_VER"
	"NAVI_DEBUG"
)
for option in "${options[@]}"; do
	opt=$(bashio::config "$option")
	export "$option"="$opt"
	bashio::log.info "$option set to ${!option}"
done

# Start AskNavidrome -------------------------------------------------------------------
bashio::log.info "Starting AskNavidrome..."
python3 app.py
