#!/usr/bin/env bashio
# shellcheck shell=bash
# shellcheck disable=SC2155
set -e

# Configure app
bashio::config.has_value "ND_MUSICFOLDER" && export ND_MUSICFOLDER=$(bashio::config "ND_MUSICFOLDER") && bashio::log.info "ND_MUSICFOLDER set to $ND_MUSICFOLDER"
bashio::config.has_value "ND_DATAFOLDER" && export ND_DATAFOLDER=$(bashio::config "ND_DATAFOLDER") && bashio::log.info "ND_DATAFOLDER set to $ND_DATAFOLDER"

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

bashio::log.info "Starting Navidrome..."
/app/navidrome
