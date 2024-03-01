# Home Assistant Addon: Navidrome

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.json)
[![Upstream](https://img.shields.io/github/v/release/navidrome/navidrome?label=Upstream)](https://github.com/navidrome/navidrome/tree/v0.51.1)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.json)

<!-- [![Codacy Badge](https://app.codacy.com/project/badge/Grade/9c6cf10bdbba45ecb202d7f579b5be0e)](https://www.codacy.com/gh/alexbelgium/hassio-addons/dashboard?utm_source=github.com&utm_medium=referral&utm_content=alexbelgium/hassio-addons&utm_campaign=Badge_Grade) -->
<!-- [![GitHub Super-Linter](https://img.shields.io/github/actions/workflow/status/alexbelgium/hassio-addons/weekly-supelinter.yaml?label=Lint%20code%20base)](https://github.com/alexbelgium/hassio-addons/actions/workflows/weekly-supelinter.yaml) -->
<!-- [![Builder](https://img.shields.io/github/actions/workflow/status/alexbelgium/hassio-addons/onpush_builder.yaml?label=Builder)](https://github.com/alexbelgium/hassio-addons/actions/workflows/onpush_builder.yaml) -->

## About

[Navidrome](https://github.com/navidrome/navidrome) is an open source web-based music collection server and streamer.
It gives you freedom to listen to your music collection from any browser or mobile device.
It's like your personal Spotify!

This addon is based on the [official docker image](https://hub.docker.com/r/deluan/navidrome) from [deluan](https://hub.docker.com/u/deluan).

## Configuration

### Home Assistant-specific

- `PUID`: User ID
- `PGID`: Group ID

### [Basic configuration](https://www.navidrome.org/docs/usage/configuration-options/#basic-configuration)

- `MusicFolder`: Folder where your music library is stored. Can be read-only
- `DataFolder`: Folder to store application data (DB)
- `LogLevel`: Log level. Useful for troubleshooting. Possible values: error, warn, info, debug, trace

### [Advanced configuration](https://www.navidrome.org/docs/usage/configuration-options/#advanced-configuration)

- `EnableFavourites`: Enable toggling "Heart"/"Loved" for songs/albums/artists in the UI (maps to "Star"/"Starred" in Subsonic Clients)
- `EnableGravatar`: Use [Gravatar](https://gravatar.com/) images as the user profile image. Needs the user's email to be filled
- `EnableSharing`: Enable the Sharing feature
- `EnableStarRating`: Enable 5-star ratings in the UI
- `Jukebox`: Device to use for Jukebox mode, if there are multiple `Jukebox.Devices` entries. Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `Jukebox`: List of devices that can be used by the Jukebox. Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `Jukebox`: Enable Jukebox mode (play audio on server’s hardware) Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `LastFM`: Last.fm API Key
- `LastFM`: Set this to `false` to completely disable Last.fm integration
- `LastFM`: Last.fm API Secret
- `ListenBrainz`: Set this to `false` to completely disable ListenBrainz integration
- `ScanSchedule`: Configure periodic scans using ["cron"](https://crontab.guru/) syntax. To disable it altogether, set it to `"0"`
- `SessionTimeout`: How long Navidrome will wait before closing web ui idle sessions
- `Spotify`: Spotify Client ID. Required if you want Artist images
- `Spotify`: Spotify Client Secret. Required if you want Artist images
- `TranscodingCacheSize`: Size of transcoding cache. Set to `"0"` to disable cache
- `UILoginBackgroundUrl`: Change background image used in the Login page
- `UIWelcomeMessage`: Add a welcome message to the login screen

## Installation

[![Add repository on my Home Assistant][repository-badge]][repository-url]

If you want to do add the repository manually, follow the procedure highlighted in the [Home Assistant website](https://home-assistant.io/hassio/installing_third_party_addons).

Use the following URL to add this repository: https://github.com/celynw/ha-addons

1. Add my Home Assistant add-ons repository to your Home Assistant instance
1. Install this addon
1. Set the configuration if necessary.
   See the [official documentation](https://www.navidrome.org/docs/usage/configuration-options/) for an explanation of the environment variables
1. Click `Save` to store your configuration
1. Start the add-on
1. Check the logs of the addon to see if everything went well

## Support

[Create an issue](https://github.com/celynw/ha-addons/issues) in this GitHub repository.

[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fcelynw%2Fha-addons
