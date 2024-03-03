# Home Assistant Addons

## About

Home Assistant allows anyone to create addon repositories to share their addons for Home Assistant easily.
This repository is one of those repositories, providing extra Home Assistant addons for your installation.

## Installation

[![Add repository on my Home Assistant][repository-badge]][repository-url]

If you want to do add the repository manually, follow the procedure highlighted in the [Home Assistant website](https://home-assistant.io/hassio/installing_third_party_addons).

Use the following URL to add this repository: https://github.com/celynw/ha-addons

## Addons provided by this repository

✓ [Navidrome](navidrome/): Modern Music Server and Streamer compatible with Subsonic/Airsonic

&emsp;&emsp;![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fnavidrome%2Fconfig.json)
[![Upstream](https://img.shields.io/github/v/release/navidrome/navidrome?label=Upstream)](https://github.com/navidrome/navidrome/tree/v0.51.1)
![aarch64][aarch64-badge]
![amd64][amd64-badge]
![armv7][armv7-badge]

✓ [AskNavidrome](asknavidrome/): An Alexa skill to allow streaming of music from Subsonic API compatible media servers on Amazon Echo devices

&emsp;&emsp;![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fcelynw%2Fha-addons%2Fmaster%2Fasknavidrome%2Fconfig.json)
[![Upstream](https://img.shields.io/github/v/release/rosskouk/asknavidrome?label=Upstream)](https://github.com/rosskouk/asknavidrome/tree/v0.8)
![aarch64][aarch64-badge]
![amd64][amd64-badge]
![armv7][armv7-badge]

## Support/Links

Open an issue/PR in this repository.

Alternatively, seek out these additional resources:

- [Navidrome request PR](https://github.com/alexbelgium/hassio-addons/issues/789)
  - *Definitely* check out [alexbelgium/hassio-addons](https://github.com/alexbelgium/hassio-addons/issues/789)!
- Originally forked from [bilogic/ha-addons](https://github.com/bilogic/ha-addons/tree/master/navidrome)

[aarch64-badge]: https://img.shields.io/badge/aarch64--green.svg?logo=arm
[amd64-badge]: https://img.shields.io/badge/amd64--green.svg?logo=amd
[armv7-badge]: https://img.shields.io/badge/armv7--green.svg?logo=arm
[repository-badge]: https://img.shields.io/badge/Add%20repository%20to%20my-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge
[repository-url]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fcelynw%2Fha-addons
