#!/usr/bin/env bashio
# shellcheck shell=bash
# shellcheck disable=SC2155,SC2016
set -e

# Export all addon options as env ------------------------------------------------------
bashio::log.info "Setting variables"

# For all keys in options.json
JSONSOURCE="/data/options.json"

# Export keys as env variables
# echo "All addon options were exported as variables"
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

# Settings parameters
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

# Export variables
{
	printf "%s\n" "export ND_LOGLEVEL=\"$ND_LOGLEVEL\""
	printf "%s\n" "export ND_ENABLEFAVOURITES=\"$ND_ENABLEFAVOURITES\""
	printf "%s\n" "export ND_ENABLEGRAVATAR=\"$ND_ENABLEGRAVATAR\""
	printf "%s\n" "export ND_ENABLESHARING=\"$ND_ENABLESHARING\""
	printf "%s\n" "export ND_ENABLESTARRATING=\"$ND_ENABLESTARRATING\""
	printf "%s\n" "export ND_JUKEBOX_DEFAULT=\"$ND_JUKEBOX_DEFAULT\""
	printf "%s\n" "export ND_JUKEBOX_DEVICES=\"$ND_JUKEBOX_DEVICES\""
	printf "%s\n" "export ND_JUKEBOX_ENABLED=\"$ND_JUKEBOX_ENABLED\""
	printf "%s\n" "export ND_LASTFM_APIKEY=\"$ND_LASTFM_APIKEY\""
	printf "%s\n" "export ND_LASTFM_ENABLED=\"$ND_LASTFM_ENABLED\""
	printf "%s\n" "export ND_LASTFM_SECRET=\"$ND_LASTFM_SECRET\""
	printf "%s\n" "export ND_LISTENBRAINZ_ENABLED=\"$ND_LISTENBRAINZ_ENABLED\""
	printf "%s\n" "export ND_SCANSCHEDULE=\"$ND_SCANSCHEDULE\""
	printf "%s\n" "export ND_SESSIONTIMEOUT=\"$ND_SESSIONTIMEOUT\""
	printf "%s\n" "export ND_SPOTIFY_ID=\"$ND_SPOTIFY_ID\""
	printf "%s\n" "export ND_SPOTIFY_SECRET=\"$ND_SPOTIFY_SECRET\""
	printf "%s\n" "export ND_TRANSCODINGCACHESIZE=\"$ND_TRANSCODINGCACHESIZE\""
	printf "%s\n" "export ND_UILOGINBACKGROUNDURL=\"$ND_UILOGINBACKGROUNDURL\""
	printf "%s\n" "export ND_UIWELCOMEMESSAGE=\"$ND_UIWELCOMEMESSAGE\""
} >> ~/.bashrc
