# Changelog

## v0.52.0

Update to latest version from `navidrome/navidrome`

### New in this release

This release upgrades [TagLib to 2.0](https://github.com/taglib/taglib/releases/tag/v2.0), improving tag importing in general.
Also general improvements to Jukebox mode, Reverse Proxy authentication, more OpenSubsonic compatibility,
and a few bug fixes.

### Highlights

- [UI] Handling long playlist comments ([#2973](https://github.com/navidrome/navidrome/pull/2973)). Thanks @TimHi
- [UI] Fix a few mistakes in the French translation ([#2872](https://github.com/navidrome/navidrome/pull/2872)). Thanks @2franix
- [Server] Block regular users from changing their own playlists ownership. Fixes this [security advisory](https://github.com/navidrome/navidrome/security/advisories/GHSA-4jrx-5w4h-3gpm). Thanks @viliald
- [Server] Allow comments in NSP files.
- [Server] Add `AlbumPlayCountMode` config option ([#2803](https://github.com/navidrome/navidrome/pull/2803)). Thanks @vvdveen
- [Scanner] Upgrade TagLib to 2.0.1
- [Subsonic] Add support for Reverse Proxy auth in Subsonic endpoints ([#2558](https://github.com/navidrome/navidrome/pull/2558)). Thanks @crazygolem
- [Subsonic] Add `channelCount` to songs in OpenSubsonic responses
- [Subsonic] Add `releaseDate` to albums in OpenSubsonic responses ([#2906](https://github.com/navidrome/navidrome/pull/2906)). Thanks @kgarner7
- [Subsonic] Fix Jukebox mode under Windows ([#2774](https://github.com/navidrome/navidrome/pull/2774)). Thanks @apkatsikas
- [Subsonic] Make MPV command configurable using the new config option `MPVCmdTemplate` ([#2948](https://github.com/navidrome/navidrome/pull/2948)). Thanks @bitte-ein-bit
- [Build] Add `make` target to build docker image
- [Build] Include MPV in release Docker image ([#2910](https://github.com/navidrome/navidrome/pull/2910))

Full changelog: https://github.com/navidrome/navidrome/compare/v0.51.1...v0.52.0

## v0.51.1

Initial release using latest release from `navidrome/navidrome`

### Bug fix point release

This release fixes a few bugs, most important one being the `converting NULL to string is unsupported` happening for users that updated their DBs directly. This fix is implemented as a change to the DB during Navidrome's startup that can take a few minutes, depending on the size of your library, so please be patient with large libraries.

### Highlights

- [Server] Fix various `converting NULL to string is unsupported` errors in 0.51.0 ([#2840]((https://github.com/navidrome/navidrome/pull/2824))). Thanks @caiocotts
- [Scanner] Import `sort_*` ID3 tags
- [Subsonic] Fix fields not being sent on getPlaylist.view responses. ([#2818](https://github.com/navidrome/navidrome/pull/2818)). Thanks @caiocotts
- [UI] Set rating value to 0 when value is null ([#2824](https://github.com/navidrome/navidrome/pull/2824)). Thanks @kgarner7
- [UI] Use order/sort album/artist when sorting tracks in playlists. Fixes ([#2819](https://github.com/navidrome/navidrome/pull/28189)
- [UI] Don't expose the Last.fm APIKey in the `index.html`
- [UI] Update German and French translations

### Changelog
* 6d253225 Use order/sort album/artist when sorting tracks in playlists. Fixes #2819
* bf2bcb12 Fix null values in DB (#2840)
* ac4ceab1 Update French translation (#2834)
* 62267415 Create resources.FS only once
* 79a4d8f6 Simplify ShortDur code and tests
* 61257f89 Update translations (#2832)
* 1f71e567 Don't expose Last.fm API Key in the index.html
* 3a9b3452 Set rating value to 0 when value is null (#2824)
* 5125558f Make Subsonic search query default to `\"\"` if not present.
* 5f9b6b63 Add a \"upgrading schema\" log message to the DB initialization when there are pending migrations.
* fa7cc40d Add tests for `toSQL`
* 58218e6d Fix fields not being sent on getPlaylist.view responses.
* 67c82f52 \"Fix\" Reddit badge
* fb7fd219 Don't add empty TIPL roles
* a6fc84a2 Parse the ID3v2.4 TIPL frame
* 1e5e8be1 Import ID3 sort_* tags
