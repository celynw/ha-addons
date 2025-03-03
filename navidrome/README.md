# Home Assistant Addon: Navidrome

![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.yaml)
[![Upstream](https://img.shields.io/github/v/release/navidrome/navidrome?label=Upstream)](https://github.com/navidrome/navidrome/releases/latest)
![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.yaml)
![Arch](https://img.shields.io/badge/dynamic/yaml?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.yaml)

## About

[Navidrome](https://github.com/navidrome/navidrome) is an open source web-based music collection server and streamer.
It gives you freedom to listen to your music collection from any browser or mobile device.
It's like your personal Spotify!

This addon is based on the [official docker image](https://hub.docker.com/r/deluan/navidrome) from [deluan](https://hub.docker.com/u/deluan).

The documentation for the configuration values can be found [here](https://www.navidrome.org/docs/usage/configuration-options).

## Installation

[![Add repository on my Home Assistant][repository-badge]][repository-url]

If you want to do add the repository manually, follow the procedure highlighted in the [Home Assistant website](https://home-assistant.io/hassio/installing_third_party_addons).

Use the following URL to add this repository: https://github.com/celynw/ha-addons

1. Add my Home Assistant Addons repository to your Home Assistant instance
1. Install this addon
1. Set the configuration if necessary.
   See the [official documentation](https://www.navidrome.org/docs/usage/configuration-options/) for an explanation of the environment variables
1. Click `Save` to store your configuration
1. Start the addon
1. Check the logs of the addon to see if everything went well

## Support

[Create an issue](https://github.com/celynw/ha-addons/issues) in this GitHub repository.

[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fcelynw%2Fha-addons
