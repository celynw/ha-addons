#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

bashio::log.info "Loading addon config..."
export NAVI_SKILL_ID=$(bashio::config 'NAVI_SKILL_ID')
export NAVI_URL=$(bashio::config 'NAVI_URL')
export NAVI_USER=$(bashio::config 'NAVI_USER')
export NAVI_PASS=$(bashio::config 'NAVI_PASS')
export NAVI_SONG_COUNT=$(bashio::config 'NAVI_SONG_COUNT')
export NAVI_PORT=$(bashio::config 'NAVI_PORT')
export NAVI_API_PATH=$(bashio::config 'NAVI_API_PATH')
export NAVI_API_VER=$(bashio::config 'NAVI_API_VER')
export NAVI_DEBUG=$(bashio::config 'NAVI_DEBUG')

bashio::log.info "Starting asknavidrome..."
exec python3 app.py
