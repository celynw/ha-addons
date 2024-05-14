# Changelog

## v0.52.5

Update to latest version from `navidrome/navidrome`

### Bug fix point release

This is mostly a bug-fix version, with focus on some Jukebox issues, but also other general improvements and fixes.

### Highlights

- [UI] Add Catppuccin Macchiato Theme ([#3014](https://github.com/navidrome/navidrome/pull/3014)). Thanks @edthu
- [UI] Make sorting lists by name/title case-insensitive ([#2993](https://github.com/navidrome/navidrome/pull/2993))
- [Server] Add `HTTPSecurityHeaders.CustomFrameOptionsValue` config option.
- [Server] Sort repeated lyrics that may be out of order ([#2989](https://github.com/navidrome/navidrome/pull/2989)). Thanks @kgarner7
- [Server] Fix sorting albums by playCount when `AlbumPlayCountMode` is normalize
- [Server] mime types can now be overriden using an external file, `$DataFolder/resources/mime_types.yml` (needs documentation)
- [Server] Change `.dsf` mime-type to `audio/x-dsf` ([#3021](https://github.com/navidrome/navidrome/pull/3021))
- [Server] General improvements to Jukebox mode ([#2997](https://github.com/navidrome/navidrome/pull/2997), [#2996](https://github.com/navidrome/navidrome/pull/2996), [#2849](https://github.com/navidrome/navidrome/pull/2849), [#3008](https://github.com/navidrome/navidrome/pull/3008)). Thanks @ms140569
- [Subsonic] Add `samplingRate` to OpenSubsonic responses

### Changelog

* c5560888 Change dsf mime-type to audio/x-dsf.
* 78f55472 Revert \"Add download link to PR\" workflow
* 2c8c87a9 Remove duplicated test
* 3463d0c2 Simplify random.Int64 usage with generics
* 0ae29440 Refactor random functions
* 30ae468d Uses Unix milliseconds support from standard Go lib
* ec68d69d Refactor cache.HTTPClient
* 955a9b43 Refactor merge.FS
* 56809419 Fix \"Add download link to PR\" workflow
* 3a2a5e96 Add samplingRate to OpenSubsonic responses
* f3bb0222 Add sampleRate to the DB
* 472324e2 Read sampleRate from audio files
* ed83c226 Do not panic if when updatePlaylist is called with a non-existent ID.
* 2fdc1677 Add Catppuccin Macchiato Theme (#3014)
* 80e68dfb Bump actions/github-script to v7
* a9c74583 Bump actions/stale and dessant/lock-threads versions
* bb96d455 Replace sync.WaitGroup with more appropriate errgroup.Group
* c0885b55 Fix M3U mimetype on Debian Bullseye
* 00cbe4c3 Update Go to 1.22.3
* 2b49c7ff fix: languageName for Persian (#3011)
* 09d1fd06 Simplify normalized AlbumPlayCountMode calc
* 747069b2 Remove unused code
* 885cd345 Clean up runNavidrome function
* c4b05dac Make sorting lists by name/title case-insensitive (#2993)
* 6408dda9 Terminate all MPV instances when stopping Navidrome (#3008)
* 677d9947 Make dependency injection more consistent
* a0290587 Fix migration package name mismatch
* eb93136b Change default transcodings to a proper typed struct
* 62cc8a2d Fix ambiguous column when sorting media_files by created_at.
* dd4374ce Limit access to Jukebox for admins only (configurable).
* 86567f54 Bump Go dependencies
* ff8dca5a Guard against missing active track (#2996)
* b3d70e92 Persist adjusted volume (#2997)
* 4d291849 Improves golangci-lint configuration and workflow (#3004)
* 2470471b Pin golangci-lint-action version as a workaround to fix the pipeline.
* 544ae90e Fix CollapsibleComment in PlaylistDetails. Closes #2992
* aef49cb8 Add `HTTPSecurityHeaders.CustomFrameOptionsValue` option.
* 7c5eec71 Fix typo
* a4c22320 Sort repeated lyrics that may be out of order (#2989)
* 8f11b991 Bump Go dependencies
* d4a9a9e5 Fix PlaylistTracks's loadAllGenres. Fix #2988
* a8955f24 Fix AlbumPlayCountMode. Closes #2984
* 2c06a423 Fix int types in OpenSubsonic responses.
* 7ab7b5df Fix signaler on Windows
* 3d9fff36 Use signal.NotifyContext
* 31fcab07 Refactor loadGenres, remove duplication
* de90152a Refactor DB Album mapping to model.Album
* 27875ba2 Load mime_types from external file
* 28f7ef43 Remove AlbumPlayCountMode from command line options

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
