# Home Assistant Addon: AskNavidrome

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fasknavidrome%2Fconfig.json)
[![Upstream](https://img.shields.io/github/v/release/rosskouk/asknavidrome?label=Upstream)](https://github.com/rosskouk/asknavidrome/releases/latest)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fasknavidrome%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fasknavidrome%2Fconfig.json)

## About

**AskNavidrome** is an Alexa skill which allows you to play music hosted on a SubSonic API compatible media server, like Navidrome.

You can stream your own music collection to your Echo devices without the restrictions you would normally face with regular streaming services like Amazon Music or Spotify.
AskNavidrome allows you to:

- Skip backwards and forwards in your current queue or playlist without limitation.
- Avoid paying subscription costs.
- Avoid being forced to listen to adverts at regular intervals.
- Actually use the music collection you have already paid for!
- Run the service on a PC directly or inside a Docker container.

See the full documentation [here](https://rosskouk.github.io/asknavidrome)

## Installation

[![Add repository on my Home Assistant][repository-badge]][repository-url]

If you want to do add the repository manually, follow the procedure highlighted in the [Home Assistant website](https://home-assistant.io/hassio/installing_third_party_addons).

Use the following URL to add this repository: https://github.com/celynw/ha-addons

1. Add my Home Assistant Addons repository to your Home Assistant instance
1. Install this addon
1. Set the configuration.
   See the [official documentation](https://rosskouk.github.io/asknavidrome/)
1. Click `Save` to store your configuration
1. Start the add-on
1. Check the logs of the addon to see if everything went well

> [!TIP]
> [This stackoverflow answer](https://stackoverflow.com/a/54265062/4857165) solved my issue with Alexa not being able to access my service

## Support

[Create an issue](https://github.com/celynw/ha-addons/issues) in this GitHub repository.

[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fcelynw%2Fha-addons
