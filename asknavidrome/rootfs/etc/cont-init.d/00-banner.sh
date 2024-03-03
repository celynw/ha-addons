#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

# Display a simple addon banner on startup --------------------------------------------
if bashio::supervisor.ping; then
	bashio::log.blue \
		"--------------------------------------------------------------------------------"
	bashio::log.blue " Addon: $(bashio::addon.name)"
	bashio::log.blue " $(bashio::addon.description)"
	bashio::log.blue \
		"--------------------------------------------------------------------------------"

	bashio::log.blue " Addon version: $(bashio::addon.version)"
	if bashio::var.true "$(bashio::addon.update_available)"; then
		bashio::log.magenta " There is an update available for this addon!"
		bashio::log.magenta " Latest addon version: $(bashio::addon.version_latest)"
		bashio::log.magenta " Please consider upgrading as soon as possible"
	else
		bashio::log.green " You are running the latest version of this addon"
	fi

	bashio::log.blue " System: $(bashio::info.operating_system)" \
		" ($(bashio::info.arch) / $(bashio::info.machine))"
	bashio::log.blue " Home Assistant Core: $(bashio::info.homeassistant)"
	bashio::log.blue " Home Assistant Supervisor: $(bashio::info.supervisor)"

	bashio::log.blue \
		"--------------------------------------------------------------------------------"
	bashio::log.blue \
		" Please share the above information when looking for help or support"
	bashio::log.blue \
		"--------------------------------------------------------------------------------"
	bashio::log.green \
		" Provided by: https://github.com/celynw/hassio-addons"
	bashio::log.blue \
		"--------------------------------------------------------------------------------"
fi


# Clean bashrc file
if [ -f ~/.bashrc ]; then rm ~/.bashrc; fi