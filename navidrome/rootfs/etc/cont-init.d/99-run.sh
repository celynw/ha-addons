#!/usr/bin/env bashio
set -e

# Configure app data -------------------------------------------------------------------
export ND_MUSICFOLDER=$(bashio::config "MusicFolder") && bashio::log.info "ND_MUSICFOLDER set to $ND_MUSICFOLDER"
export ND_DATAFOLDER=$(bashio::config "DataFolder") && bashio::log.info "ND_DATAFOLDER set to $ND_DATAFOLDER"

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
export ND_LOGLEVEL=$(bashio::config "LogLevel") && bashio::log.info "ND_LOGLEVEL set to $ND_LOGLEVEL"
export ND_ENABLEFAVOURITES=$(bashio::config "EnableFavourites") && bashio::log.info "ND_ENABLEFAVOURITES set to $ND_ENABLEFAVOURITES"
export ND_ENABLEGRAVATAR=$(bashio::config "EnableGravatar") && bashio::log.info "ND_ENABLEGRAVATAR set to $ND_ENABLEGRAVATAR"
export ND_ENABLESHARING=$(bashio::config "EnableSharing") && bashio::log.info "ND_ENABLESHARING set to $ND_ENABLESHARING"
export ND_ENABLESTARRATING=$(bashio::config "EnableStarRating") && bashio::log.info "ND_ENABLESTARRATING set to $ND_ENABLESTARRATING"
export ND_JUKEBOX_DEFAULT=$(bashio::config "Jukebox_Default") && bashio::log.info "ND_JUKEBOX_DEFAULT set to $ND_JUKEBOX_DEFAULT"
export ND_JUKEBOX_DEVICES=$(bashio::config "Jukebox_Devices") && bashio::log.info "ND_JUKEBOX_DEVICES set to $ND_JUKEBOX_DEVICES"
export ND_JUKEBOX_ENABLED=$(bashio::config "Jukebox_Enabled") && bashio::log.info "ND_JUKEBOX_ENABLED set to $ND_JUKEBOX_ENABLED"
export ND_LASTFM_APIKEY=$(bashio::config "LastFM_ApiKey") && bashio::log.info "ND_LASTFM_APIKEY set to $ND_LASTFM_APIKEY"
export ND_LASTFM_ENABLED=$(bashio::config "LastFM_Enabled") && bashio::log.info "ND_LASTFM_ENABLED set to $ND_LASTFM_ENABLED"
export ND_LASTFM_SECRET=$(bashio::config "LastFM_Secret") && bashio::log.info "ND_LASTFM_SECRET set to $ND_LASTFM_SECRET"
export ND_LISTENBRAINZ_ENABLED=$(bashio::config "ListenBrainz_Enabled") && bashio::log.info "ND_LISTENBRAINZ_ENABLED set to $ND_LISTENBRAINZ_ENABLED"
export ND_SCANSCHEDULE=$(bashio::config "ScanSchedule") && bashio::log.info "ND_SCANSCHEDULE set to $ND_SCANSCHEDULE"
export ND_SESSIONTIMEOUT=$(bashio::config "SessionTimeout") && bashio::log.info "ND_SESSIONTIMEOUT set to $ND_SESSIONTIMEOUT"
export ND_SPOTIFY_ID=$(bashio::config "Spotify_ID") && bashio::log.info "ND_SPOTIFY_ID set to $ND_SPOTIFY_ID"
export ND_SPOTIFY_SECRET=$(bashio::config "Spotify_Secret") && bashio::log.info "ND_SPOTIFY_SECRET set to $ND_SPOTIFY_SECRET"
export ND_TRANSCODINGCACHESIZE=$(bashio::config "TranscodingCacheSize") && bashio::log.info "ND_TRANSCODINGCACHESIZE set to $ND_TRANSCODINGCACHESIZE"
export ND_UILOGINBACKGROUNDURL=$(bashio::config "UILoginBackgroundUrl") && bashio::log.info "ND_UILOGINBACKGROUNDURL set to $ND_UILOGINBACKGROUNDURL"
export ND_UIWELCOMEMESSAGE=$(bashio::config "UIWelcomeMessage") && bashio::log.info "ND_UIWELCOMEMESSAGE set to $ND_UIWELCOMEMESSAGE"


# Start Navidrome ----------------------------------------------------------------------
bashio::log.info "Starting Navidrome..."
/app/navidrome
