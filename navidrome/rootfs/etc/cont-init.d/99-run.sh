#!/usr/bin/env bashio
set -e

# Configure app data -------------------------------------------------------------------
export ND_MUSICFOLDER=$(bashio::config "ND_MUSICFOLDER") && bashio::log.info "ND_MUSICFOLDER set to $ND_MUSICFOLDER"
export ND_DATAFOLDER=$(bashio::config "ND_DATAFOLDER") && bashio::log.info "ND_DATAFOLDER set to $ND_DATAFOLDER"

# Create folder
if [ ! -d "$ND_DATAFOLDER" ]; then
	bashio::log.info "Creating ND_DATAFOLDER $ND_DATAFOLDER"
	mkdir -p "$ND_DATAFOLDER"
fi

# We are in the container's FS here
bashio::log.info "Looking inside ND_DATAFOLDER $ND_DATAFOLDER"
ls -la $ND_DATAFOLDER
bashio::log.info "Looking inside ND_MUSICFOLDER $ND_MUSICFOLDER"
ls -la $ND_MUSICFOLDER


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
	"ND_LOGLEVEL"
	"ND_ENABLEFAVOURITES"
	"ND_ENABLEGRAVATAR"
	"ND_ENABLESHARING"
	"ND_ENABLESTARRATING"
	"ND_JUKEBOX_DEFAULT"
	"ND_JUKEBOX_DEVICES"
	"ND_JUKEBOX_ENABLED"
	"ND_LASTFM_APIKEY"
	"ND_LASTFM_ENABLED"
	"ND_LASTFM_SECRET"
	"ND_LISTENBRAINZ_ENABLED"
	"ND_SCANSCHEDULE"
	"ND_SESSIONTIMEOUT"
	"ND_SPOTIFY_ID"
	"ND_SPOTIFY_SECRET"
	"ND_TRANSCODINGCACHESIZE"
	"ND_UILOGINBACKGROUNDURL"
	"ND_UIWELCOMEMESSAGE"
)
for option in "${options[@]}"; do
	opt=$(bashio::config "$option")
	export "$option"="$opt"
	bashio::log.info "$option set to ${!option}"
done

# Start Navidrome ----------------------------------------------------------------------
bashio::log.info "Starting Navidrome..."
/app/navidrome
