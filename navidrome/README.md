# Home Assistant Addon: Navidrome

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.json)
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

- `ND_DATAFOLDER`: Folder to store application data (DB)
- `ND_LOGLEVEL`: Log level. Useful for troubleshooting. Possible values: error, warn, info, debug, trace
- `ND_MUSICFOLDER`: Folder where your music library is stored. Can be read-only

### [Advanced configuration](https://www.navidrome.org/docs/usage/configuration-options/#advanced-configuration)

- `ND_ENABLEGRAVATAR`: Use [Gravatar](https://gravatar.com/) images as the user profile image. Needs the user's email to be filled
- `ND_ENABLESHARING`: Enable the Sharing feature
- `ND_ENABLESTARRATING`: Enable 5-star ratings in the UI
- `ND_JUKEBOX_DEFAULT`: Device to use for Jukebox mode, if there are multiple `Jukebox.Devices` entries. Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `ND_JUKEBOX_DEVICES`: List of devices that can be used by the Jukebox. Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `ND_JUKEBOX_ENABLED`: Enable Jukebox mode (play audio on server’s hardware) Click [here](https://www.navidrome.org/docs/usage/jukebox/#configuration) for details
- `ND_LASTFM_APIKEY`: Last.fm API Key
- `ND_LASTFM_ENABLED`: Set this to `false` to completely disable Last.fm integration
- `ND_LASTFM_SECRET`: Last.fm API Secret
- `ND_LISTENBRAINZ_ENABLED`: Set this to `false` to completely disable ListenBrainz integration
- `ND_SCANSCHEDULE`: Configure periodic scans using ["cron"](https://crontab.guru/) syntax. To disable it altogether, set it to `"0"`
- `ND_SESSIONTIMEOUT`: How long Navidrome will wait before closing web ui idle sessions
- `ND_SPOTIFY_ID`: Spotify Client ID. Required if you want Artist images
- `ND_SPOTIFY_SECRET`: Spotify Client Secret. Required if you want Artist images
- `ND_TRANSCODINGCACHESIZE`: Size of transcoding cache. Set to `"0"` to disable cache
- `ND_UILOGINBACKGROUNDURL`: Change background image used in the Login page
- `ND_UIWELCOMEMESSAGE`: Add a welcome message to the login screen

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
