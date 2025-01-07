# Changelog

## [v0.54.1](https://github.com/navidrome/navidrome/releases/tag/v0.54.1)

Update to latest version from `navidrome/navidrome`

We are thrilled to announce the release of **Navidrome version 0.54.1**! This update introduces several new features, enhancements, and important bug fixes to elevate your music streaming experience. (Yes, ChatGPT is our new Public Relations intern 😄)

## 🔐 Important Security Bugfix

**JWT secrets are now stored encrypted in the Database**. A CVE Advisory will be published soon.

## 🎉 Noteworthy New Features

### 📊 Anonymous Usage Data Collection
As discussed with the community (in Discord and Reddit), Navidrome now includes **anonymous usage data collection** (opt-out) to help us understand how you interact with the application. This data assists in improving features and performance while ensuring your privacy is respected. For details on what is collected and how, read [this](https://www.navidrome.org/docs/getting-started/insights/). 

For the TL;DR opt-out instructions, set the new config option (or env var) to (but we really hope you consider leaving it enabled — your participation will be much appreciated).

### 🖥️ Enhanced Packaging Support
**New MSI Installer**: Thanks to @mintsoft for creating a MSI installer, for a smoother and more reliable installation process on Windows platforms.

**Linux Package Installer**: And thanks to @kgarner7, we now distribute and packages for Navidrome, which automatically install it as a service on compatible Linux distributions.

**Apple Silicon Binaries**: We finally offer ARM builds for macOS, optimized for the Apple processors.

### 🔄 Native Backup and Restore
Introducing a **native automatic backup mechanism** (thanks again, @kgarner7), making it easier than ever to safeguard your music library. Check the backup options in the [configuration documentation](https://www.navidrome.org/docs/usage/configuration-options/). More documentation to follow.

### 🎨 Artists from Last.fm
Navidrome now also fetches **artist images directly from Last.fm**. No need to create a Spotify account anymore :)

### 🎧 User Interface Improvements
**Drag-and-Drop Playlists**: You can now **drag and drop song titles** from the player directly to the sidebar playlist, making playlist management more intuitive and efficient.

### 🌟 Navidrome Guru on Gurubase.io
We’ve partnered with [Gurubase.io](https://gurubase.io/) to bring you [Navidrome Guru](https://gurubase.io/g/navidrome). Now you can chat with an AI that is (almost) expert on Navidrome configuration and issues. More information is being added to it everyday, so it will only get better. Give it a try and let us what is missing and how it can improve.

### ⚙️ Other Improvements 

And as usual, lots of bug fix and improvements. For more details look at the complete changelog.

## Changelog
### New Features
* 8e2052ff95d5695a79f139793ae9b2bfeefe03f5: feat(Insights): add anonymous usage data collection (#3543) (@deluan)
* 9c3b4561652a15846993d477003e111f0df0c585: feat(build): MSI installer improvements (#3376) (@mintsoft)
* 8fb09e71b6c982a9650e352fdc2a665a687b368a: feat(server): get artist images from Last.fm (@deluan)
* 55730514ea59d5f1d0b8e3f8745569c29bdbf7b4: feat(server): provide native backup/restore mechanism (#3194) (@kgarner7)
* 06c9c1e64a14d31d971339217d0940199b46d81f: feat(server): require explicitly enabling reverse proxy auth for unix sockets (#3062) (@crazygolem)
* 0a650de357babdcc8ce910fe37fee84acf4ed2fe: feat(subsonic): add MusicBrainz ID and Sort Name to getArtists (@kgarner7)
* 23bebe4e06124becf1000e88472ae71a6ca7de4c: feat(subsonic): getOpenSubsonicExtensions is now public (@deluan)
* 8b5af676474871508dc73ff4e60b625705ac3dfa: feat(subsonic): support OS clearing play queue (#3399) (@deluan)
* 0281d06b011d29962d210cdb0f11fb5c6197dabc: feat(ui): Allow drag-and-drop song title from player to sidebar playlist (#2435) (@Egor3f)
* a9334b7787bd4cfe18bb329654e28b0702004127: feat(ui): show user's lastAccess (#3342) (@deluan)
* 768160b05e9929bf5d82359b7768e67ffffeb9b6: feat: Windows MSI installer and service support (#3125) (@mintsoft)
* 9ae898d071e32cf56261f3b13a639fd01092c201: feat: add Navidrome Guru on Gurubase.io (#3491) (@kursataktas)
* cd0cf7c12be08d8035c038138d25e3f6431df021: feat: cache login background images (#3462) (@deluan)
### Bug fixes
* 851f54ea5741990d7df359a3f9df6fb7a91a084c: fix(ci): fix linux packages upload (#3569) (@deluan)
* 6bc4c0317f024fbc6cb8ce056e04fad567d9d2c7: fix(insights): better status (@deluan)
* 906ac635c296acacd9e560409c09236ca3d64aaa: fix(insights): check if running in a container (@deluan)
* 6c11649b06afdf0bc9b8303c8c791ae5aecc698c: fix(insights): fix issues and improve reports (#3558) (@deluan)
* 82633d7490df13b825a01164afe1be4f7d2d0a66: fix(playlists): make the m3u parser case-insensitive again #3410 (@caiocotts)
* 92a1f19271ded3cb363b228f0a850a7205e81cf4: fix(scanner): make activity panel update rate configurable (@deluan)
* 28668782c61b85f6f6f08ff7b57f7a8e2c8c08d0: fix(server): FFmpegPath can contain spaces (@deluan)
* 627417dae33eda27e1dcc3072bde832c2bb4061e: fix(server): add disc number to fake path. (@deluan)
* 8808eadddaa517ab58ce33a70d08f37b0ffdef0e: fix(server): allow extra spaces in transcoding commands (@deluan)
* 9cbdb20a318a49daf95888b1fd207d4d729b55f1: fix(server): don't try to save JWT if it fails to encrypt (@deluan)
* 7f030b0859653593fd2ac0df69f4a313f9caf9ff: fix(server): encrypt jwt secret at rest (@deluan)
* fcb5e1b80624ecb8b7e1d80656f799f0cb2b80f9: fix(server): fix case-insensitive sort order and add indexes to improve performance (#3425) (@deluan)
* 177a1f853f1e1fe55f2b951873a12c634fa851ce: fix(server): more race conditions when updating artist/album from external sources (@deluan)
* 2b0bfbd75addb2ba7480ef9e7398c64738c29614: fix(server): race condition when updating artist/album from external sources (@deluan)
* 3e47819f7abbc6e14409e855a9f1cbc62dc69e30: fix(server): reduce album placeholder image size by converting it to webp (@deluan)
* 3fda7445b02bc54302295d9a78bf604fdac641bc: fix(server): try to find proper embedded front cover - only for vorbis comments for now (#3348) (@deluan)
* b7285b28cf7118165dea732a4077ad53f800d0ac: fix(test): vitest was hanging due to vite-plugin-eslint plugin (@deluan)
* cbf5e3d51b27aa01b802e436272d5be9de713b78: fix(ui): PWA not updating properly in new Vite config (#3493) (@deluan)
* dcc84e29d962820efd219ec4e7d2ad1b50c6e022: fix(ui): Update Chinese (simplified) Translation (#3490) (@qx100)
* 32afe9698cc51e815939b0377dff3ba215b63274: fix(ui): completed the translation of zh-Hant and zh-Hans (#3450) (@york9675)
* 2d8507cfd72656609d3b38487dc6053f4090ed3d: fix(ui): don't hide Last.fm scrobble switch (#3561) (@deluan)
* 4f8cd5307cf5f387bbf14bd4647ef3324facc90f: fix(ui): fix play queue for play button and context menus (#3559) (@caiocotts)
* 1a36f06147628e3b1f976135c300d16305dc9371: fix(ui): service worker crashing on precacheAndRoute (#3528) (@kgarner7)
* 0232afd98d3d40f42a0bf3aed64f736bb0308666: fix(ui): service worker does not load new version of ui (#3402) (@deluan)
* 04f296cc734cd99707e9cb0060dbc9a4dee5e8c5: fix(ui): show last.fm api-key missing in a (@deluan)
* 0d520dea2d117e014979c44257b94d3e3713d292: fix(ui): update Basque (#3542) (@xabirequejo)
* de04393b47ff65acce629bb25b3aa77859cd1bcd: fix(ui): update German translation (#3345) (@Lokke)
* 640a734896fd255fce8b751c9465c4397413a0c0: fix(ui): update Hungarian translation (#3346) (@ChekeredList71)
* a358d107aaaa1143947a5708ca27d9e472c9e6c5: fix(ui): update Serbian translation (#3361) (@eevan78)
* 3e7c4b6f70ea0e8b75912490e7e3585e4a86abd8: fix(ui): update Turkish, Galician and Polish translations from POEditor (#3426) (@deluan)
* 3713032f57eea19ffb2ce96bacb497e471b8f395: fix(ui): update translations from POEditor (#3349) (@deluan)
* 72a0f59be316df7e0b4c7be91a82e277552a55ac: fix(ui): update translations from POEditor (#3568) (@deluan)
* ae6499b941542964ed41743e4edd03f5ff50a7d3: fix: PRs should not try to push to docker (#3393) (@deluan)
* 16d1314a680bff39641e76f3b8f8e9f7c00f9020: fix: do not add nil filters (#3394) (@deluan)
* 943b456d3f3f34bd8b39c5a398c2862733f10fd9: fix: do not try to push to ghcr.io without proper permissions (#3395) (@deluan)
* 6c6223f2f9db2c8c253e0d40a192e3519c9037d1: fix: forcing transcoding when client does not specify transcoding options (#3455) (@deluan)
* ccce1c0f6dbff1497fb76b830f92654e1a386458: fix: pre-cache square images, or else they are not useful for the Album Grid (@deluan)
* 9c46e2b2622e7ed4fb3a068f92e98efe928fe0dd: fix: use docker buildx, as required by Linux (@deluan)
* 00c6a0ed1f3c7a27f3d3a027c4a2723b1f3f7fc4: fix: use target platform to build final image (#3397) (@deluan)
* bbb3182bc97605020af5b4a76efc58a3cf2a7b88: refactor(server): remove ffmpeg unused code (@deluan)
### Documentation updates
* 21dd04cb7db557f2d7e44c50f1b467fe04c8feec: docs: set org.opencontainers.image.source label in Dockerfile (#3564) (@dmarcoux)
### Build process updates
* af1add43121937cc0520e910b0b569c9cc09bd32: Revert "build: new pipeline, new way to cross-compile and build docker images locally. (#3383)" (@deluan)
* d9fa19dab32e2c177a18956dbf51c7c4934e0337: build(ci): bump goreleaser to 2.3.2 (@deluan)
* 9e5849e4dc9852f18cae5746f1ba647619054420: build(dependabot): add docker configuration (@deluan)
* 69e2a6d6209487903dd8b6cb0119c9e1cfa2cf7d: build(netgo): make sure the project is always compiled with build tag (#3428) (@deluan)
* fcdd30ba8fbba7ed296d6ab003396103481d5110: build(ui): migrate from CRA/Jest to Vite/Vitest (#3311) (@deluan)
* 154e13f7c910cbf429daef1c1049c3b75478d9c7: build: add packages for deb and rpm to release (#3202) (@kgarner7)
* 5f6a90e5aa66103d74397e89c0a3205995fdbf58: build: fix build on FreeBSD (#3403) (@jan666)
* b14c7906411b896f507181ac9e53c57b6920152a: build: new pipeline, new way to cross-compile and build docker images locally. (#3383) (@deluan)
* 214287e00dd64f31f6ab24b940f5d9e057a7c647: build: new pipeline, new way to cross-compile and build docker images locally. (#3388) (@deluan)
* 9d8c49750e7800208482bd11478cbda411ce4bbf: ci: ignore refactor commits in release notes (@deluan)
### Other work
* 297f72ff1a679d1308e7b733be649ab2795bdcf7: chore(deps): bump Alpine version (@deluan)
* 6e5eea980d35934f76516c23ed5ad404df26e352: chore(deps): bump Go dependencies (@deluan)
* faed2ea8d765f5b152ee3ad43e07dcf90f6bb51f: chore(deps): bump Go dependencies (@deluan)
* 181c29613f55c9e92370503b87d3ca5ce43d9fca: chore(deps): bump Go dependencies (@deluan)
* 2bb918f8a117cc3f527198e781b1becc13f6f6d5: chore(deps): bump Go dependencies (@deluan)
* 3671598121742c1263dd2818c55bb3e8cc89f519: chore(deps): bump Go dependencies (@deluan)
* 94bc1a1d4138572f38364f9313158d1bce1b1c0b: chore(deps): bump Go dependencies (@deluan)
* eab6aadc0f83f65cf6537e80e61de97907e88672: chore(deps): bump Go to 1.23.2 (@deluan)
* 6ff7ab52f4a62e65d59b6c6eb9b9f47eb976c43b: chore(deps): bump JS dependencies (@deluan)
* 1c0ebb946076a9c3ed018f1cb2c5ffc6135cff46: chore(deps): bump JS dependencies (@deluan)
* c952dc343afb7e9e64acaf1a1b64d87ac13a57cf: chore(deps): bump JS dependencies (@deluan)
* 44bc70b26953e896fd33fcad3ec854bb95d096df: chore(deps): bump JS dependencies (@deluan)
* 6040a502976a86db87096b5d64e4d7de9966cf72: chore(deps): bump alpine from 3.18 to 3.20 in /.github/workflows (#3326) (@dependabot[bot])
* dd48a23f92530646415c24f6c9ee9a29f61bcdee: chore(deps): bump github.com/unrolled/secure from 1.15.0 to 1.16.0 (#3327) (@dependabot[bot])
* 075a7e26404fab17ad4d67a81f5b38cf28b22d2d: chore(deps): bump go dependencies (@deluan)
* cf69df877a713608a2a67644dbbe9e05cebdb43b: chore(deps): bump js dependencies (@deluan)
* 270ae3549df165e7dd4b465e0ba2f6b2944aa954: chore(deps): bump peter-evans/create-pull-request from 6 to 7 (@deluan)
* bc3576e092597b2f3c9ef28483e892f17b2d81ae: chore(deps): bump prettier (@deluan)
* ed3ab5385dd867fb0394c95dcce8aa8bfd7f5551: chore(deps): bump rollup from 2.79.1 to 2.79.2 in /ui (@deluan)
* a9b301dfc50910b0ab426cd40a03cd163c111725: chore(deps-dev): bump @testing-library/jest-dom in /ui (#3418) (@dependabot[bot])
* 936af2d895e34bab6c675bcde8204ed6e855c020: chore(deps-dev): bump @types/node from 22.6.1 to 22.7.4 in /ui (#3335) (@dependabot[bot])
* bc4aa55de3cce310ef14f1e33d627a06a53600cd: chore(deps-dev): bump @types/node from 22.7.4 to 22.7.5 in /ui (#3378) (@dependabot[bot])
* b86a69567d25f1390dda04972b6cb3d49d804000: chore(deps-dev): bump @types/node from 22.7.6 to 22.7.7 in /ui (#3417) (@dependabot[bot])
* 67474b776cf01f9b15eea05b3e9b49fb0211d63c: chore(deps-dev): bump @vitejs/plugin-react from 4.3.2 to 4.3.3 in /ui (#3415) (@dependabot[bot])
* b2eb5330826177978770a278ba617ac430878f7f: chore(deps-dev): bump @vitejs/plugin-react-swc in /ui (#3339) (@dependabot[bot])
* fd81039f1b76db2f082766d82c6bd1ab73c51aa1: chore(deps-dev): bump @vitest/coverage-v8 from 2.1.1 to 2.1.3 in /ui (#3379) (@dependabot[bot])
* 15b2dc6b486acb7938b6060aad8449b039a3409b: chore(deps-dev): bump eslint-plugin-jsx-a11y in /ui (#3416) (@dependabot[bot])
* 5e8085bf3ce85a3bf7b46065585449c53593ca10: chore(deps-dev): bump eslint-plugin-react from 7.36.1 to 7.37.0 in /ui (#3334) (@dependabot[bot])
* ff79ac4336b6d6a5ded313539381e83d2d1c715f: chore(deps-dev): bump eslint-plugin-react from 7.37.0 to 7.37.1 in /ui (#3362) (@dependabot[bot])
* 8d37781a47d22a5da6cb2ac550afa29aeaca68c5: chore(deps-dev): bump eslint-plugin-react-hooks in /ui (#3381) (@dependabot[bot])
* 1c48a5575920ca66fc19e08ca0579f4b939ad748: chore(deps-dev): bump eslint-plugin-react-refresh in /ui (#3419) (@dependabot[bot])
* a6fb7fd705e337f7d3b5fda162da8950f8233964: chore(deps-dev): bump typescript from 5.6.2 to 5.6.3 in /ui (#3380) (@dependabot[bot])
* b1c18a428bea161c9abc31fa3a4fadf068a292e3: chore(deps-dev): bump vite from 5.4.7 to 5.4.8 in /ui (#3340) (@dependabot[bot])
* 6ec6ac1595e7b3ce77bf18ffe9fbdbdceaddd859: chore(deps-dev): bump vite from 5.4.8 to 5.4.9 in /ui (#3382) (@dependabot[bot])
* 1fac9cc3ee2c4168f96e582b941c46b63cd270a2: chore: add poeditor logo to readme (#3329) (@deluan)
* 054946dc42304edbbc25b64f602da43998cced57: chore: update sanitize with updated diacritics (@deluan)
* 97c06aba1a49cb51836aa73227c175deafada405: perf(server): add index for sort tags. (@deluan)
* 3982ba725883e71d4e3e618c61d5140eeb8d850a: revert: separation of write and read DBs (@deluan)

**Full Changelog**: https://github.com/navidrome/navidrome/compare/v0.53.3...v0.54.1

## Helping out

This release was only possible thanks to the support of some **awesome people**!

Want to be one of them?
You can [sponsor](https://github.com/sponsors/deluan), pay me a [Ko-fi](https://ko-fi.com/deluan) or [contribute with code](https://www.navidrome.org/docs/developers/).

## Where to go next?

* Read installation instructions on our [website](https://www.navidrome.org/docs/installation/).
* Reach out on [Discord](https://discord.gg/xh7j7yF), [Reddit](https://www.reddit.com/r/navidrome/) and [Twitter](https://twitter.com/navidrome)!

## [v0.53.3](https://github.com/navidrome/navidrome/releases/tag/v0.53.3)

Update to latest version from `navidrome/navidrome`

## Changelog
### Bug fixes
* 76614b8f1611731ab222fb907ebd47ac34e53528: fix(scanner): update lib.LastScanAt on each rescan (#3313) (@deluan)
* 5be73d404f897892b4fad98248c52d1eabd73e7a: fix(server): allow changing local login background url (@deluan)
* 13af8ed43ac42cfbcc19588c39ad0e65c7733bc6: fix(server): preserve m3u file order on import (#3314) (@kgarner7)
* 80acfc103f72ed810014713a96e7e807a8e0bc19: fix(server): throttle events sent to UI when scanning. Relates to #1511 (@deluan)
* d31952f46941adfa692525066d62474a16c64f00: fix(ui): avoid invalid requests after logoff (@deluan)
* 782cd26b3dbcff06cd2eb3a9b71c1d67c4b74913: fix(ui): save play mode for player (#3315) (@kgarner7)
* 32d2d7c15b64d1749ab543659ddc4e17fd52deae: fix(ui): update Basque translation (#3306) (@xabirequejo)
* 1fa245d141852d26837acd1c7fcf9dca0bd36174: fix(ui): update Swedish translation (#3316) (@andylundqvist)
### Other work
* 84dc10529d3194505b173c582e3015dc9c47f414: chore(deps): bump github.com/prometheus/client_golang from 1.20.3 to 1.20.4 (#3301) (@dependabot[bot])
* 6031d97c9da58a6b4c54f74e6d674d7cb07c6683: chore(deps): bump rollup from 2.79.1 to 2.79.2 in /ui (#3319) (@dependabot[bot])
* 24d911744e606b7cb5bbf3d2ccd4f56df1db8747: chore(deps): bump github.com/pressly/goose/v3 from 3.22.0 to 3.22.1 (#3302) (@dependabot[bot])
* 825cbcbf5380a487bcbab93b5a7d2b3b1673774c: chore(readme): reddit badge is working again. (@deluan)
* 669c8f4c49a7ef51ac9a53c725097943f67219eb: refactor(server): replace RangeByChunks with Go 1.23 iterators (#3292) (@deluan)
* 10a1b5faf88289a6e2e236b20cbd28c0e0a70eaf: test(scanner): remove redundant fixture file (@deluan)

**Full Changelog**: https://github.com/navidrome/navidrome/compare/v0.53.2...v0.53.3

## Helping out

This release is only possible thanks to the support of some **awesome people**!

Want to be one of them?
You can [sponsor](https://github.com/sponsors/deluan), pay me a [Ko-fi](https://ko-fi.com/deluan) or [contribute with code](https://www.navidrome.org/docs/developers/).

## Where to go next?

* Read installation instructions on our [website](https://www.navidrome.org/docs/installation/).
* Reach out on [Discord](https://discord.gg/xh7j7yF), [Reddit](https://www.reddit.com/r/navidrome/) and [Twitter](https://twitter.com/navidrome)!

## [v0.53.2](https://github.com/navidrome/navidrome/releases/tag/v0.53.2)

Update to latest version from `navidrome/navidrome`

## Changelog
### New Features
* 7a6845fa5aedc2af1c246e8679e97da2ea260c9c: feat(ui): add Serbian translation (#3287) (@eevan78)
### Bug fixes
* 46be041e7b86f3fe2bc6cf5f1f64a80c757c0f75: fix(scanner): improve M3U playlist import times (#2706) (@deluan)
* 5b89bf747f0ccecc90c6c1e186b8b44d7c7d7ec3: fix(server): play queue should not return empty entries for deleted tracks (@deluan)
* 04603a1ea2448c4e149af5be86e0da725530ac6e: fix(subsonic): honour PreferSortTag when building indexes for and (#3286) (@naiar)
* ecf934feabd96b4ab476efab922a661d69d34027: fix(subsonic): random albums not reshuffling. (@deluan)
* b0e7941abe81d70940247b8e1a7099e05264344f: fix(ui): fix Nuclear Theme (#3291) (@gruneforth)
* b6433057e933b266762d98b53469c936cbbd4b19: fix(ui): make random albums order stick when coming back to the grid (@deluan)
* ee2e04b832be954fd12b8531705dc761ebe3e648: fix(ui): random seed for album list on page reload (#3279) (@kgarner7)
* 196557a41abe7e63b84c6c9931b23e70bfd3abde: fix(ui): show effective dB of track when playing (#3293) (@kgarner7)
* 50870d3e6129021551271f0525ec01b2d5610531: fix(ui): sort by favourited (@deluan)
* 11d96f1da40e2c454917d91748dd704082459a40: fix(ui): sort mappings (#3296) (@caiocotts)
* 5baf0b80aa9766ad0d9e633511f4cbe465a21f89: fix(ui): sort playlist by song duration (#3284) (@deluan)
* a02cfbe2a7ad0690760ea990b2c01d7dd12b46b5: fix(ui): update German translation (#3290) (@deluan)
* 27780683aa9558270b9caa0765fc403b4b713750: fix(ui): update Korean translation (#3288) (@DDinghoya)
### Build process updates
* 3910e77a7a6ff747487b5ef484a67dbab5826f6a: build(ci): change GitHub release notes (#3300) (@deluan)
* e628aafa4b02e185e59b6fa90966554dc170c1ee: build(go): set toolchain to latest version (@deluan)
### Other work
* d0784b6a2171d9e6b775f841cb17c822ce059021: chore(ci): change "update translations" PR title (@deluan)

**Full Changelog**: https://github.com/navidrome/navidrome/compare/v0.53.1...v0.53.2

## Helping out

This release is only possible thanks to the support of some **awesome people**!

Want to be one of them?
You can [sponsor](https://github.com/sponsors/deluan), pay me a [Ko-fi](https://ko-fi.com/deluan) or [contribute with code](https://www.navidrome.org/docs/developers/).

## Where to go next?

* Read installation instructions on our [website](https://www.navidrome.org/docs/installation/).
* Reach out on [Discord](https://discord.gg/xh7j7yF), [Reddit](https://www.reddit.com/r/navidrome/) and [Twitter](https://twitter.com/navidrome)!

## [v0.53.1](https://github.com/navidrome/navidrome/releases/tag/v0.53.1)

Update to latest version from `navidrome/navidrome`

## Bug fix point release
This release fixes a couple of regressions. Thanks @kgarner7 for fixing #3274.

Also, please read the release notes from [0.53.0](https://github.com/navidrome/navidrome/releases/tag/v0.53.0) if you haven't already done so.

## Changelog
* 1ba390a72a840a256de14eaf8a1b3e813e598c36 Fix Random Album pages (#3274)
* 8134edb5d167114b7882d5abae614049ba84ad1e Fix UI's Genre and Artist filters (#3273)

## [v0.53.0](https://github.com/navidrome/navidrome/releases/tag/v0.53.0)

Update to latest version from `navidrome/navidrome`

As always, many thanks to all contributors!

Hope you all enjoy it.

## Highlights

- [UI] Add Nuclear theme ([#3098](https://github.com/navidrome/navidrome/pull/3098)). Thanks @gruneforth
- [UI] Add Hungarian translation. Thanks @Soderes and @ChekeredList71
- [UI] Add Basque translation. Thanks @xabirequejo
- [UI] Add toggle for Auto-Import playlists ([#3060](https://github.com/navidrome/navidrome/pull/3060)). Thanks @caiocotts
- [UI] Fix album sorting in Artist detail page
- [UI] Fix album coverart "stuttering", when you have non-square albums in the grid ([#3035](https://github.com/navidrome/navidrome/pull/3035)). Thanks @caiocotts
- [UI] Fix disappearing Last.FM links ([#3084](https://github.com/navidrome/navidrome/pull/3084)). Thanks @caiocotts
- [UI] Fix Disc context menu contains broken "Share" and "Get Info" entries ([#3204](https://github.com/navidrome/navidrome/pull/3204)) Thanks @TheLastZombie
- [UI] Fix ReplayGain's preAmp ([#3184](https://github.com/navidrome/navidrome/pull/3184)) . Thanks @kgarner7
- [Server] Fix Incorrect case in username in Subsonic API causes failure creating new player ([#1928](https://github.com/navidrome/navidrome/pull/1928)). Thanks @kgarner7
- [Server] Only refresh smart playlist when fetching first track ([#3244](https://github.com/navidrome/navidrome/pull/3244)). Thanks @kgarner7
- [Server] Recursively refresh nested smart playlists ([#3018](https://github.com/navidrome/navidrome/pull/3018)). Thanks @reillymc
- [Server] Use SHA256 in Gravatar URLs. Thanks @nyxfqq
- [Server] Fixed memory leak during Scan ([#3031](https://github.com/navidrome/navidrome/pull/3031)). Thanks @mintsoft
- [Server] Deterministic pagination in Random Albums list ([#1841](https://github.com/navidrome/navidrome/pull/1841)). Thanks @gqgs
- [Server] Optmize SQLite3 DB access
- [Server] Add configuration option ([#3265](https://github.com/navidrome/navidrome/pull/3265)). Thanks @caiocotts
- [Server] Increase artist image sizes, see discussion [here](https://support.symfonium.app/t/artist-picture-less-compressed/4447)
- [Server] Improve SQL sanitization, to avoid potential SQL injection. Thanks @snyff
- [Scanner] Add support for gain tags ([#3072](https://github.com/navidrome/navidrome/pull/3072)). Thanks @kartikynwa
- [Scanner] Upgrade to [TagLib 2.0.2](https://github.com/taglib/taglib/releases/tag/v2.0.2)
- [Scanner] Add config option ([#3143](https://github.com/navidrome/navidrome/pull/3143)). Thanks @john8329
- [Scanner] Skip Synology snapshot () folders
- [Subsonic] Fix OpenSubsonic structured lyrics response ([#3041](https://github.com/navidrome/navidrome/pull/3041)). Thanks @dweymouth 

## Changelog
* 910a46120b4ad5ec670f9e0cac377f6f4dddfd42 Bump dompurify from 2.4.5 to 2.5.6 in /ui (#3270)
* 8c86d0945ca83eb5f4659d1875fc6dbede85f7c5 Bump github.com/mileusna/useragent from 1.3.4 to 1.3.5 (#3269)
* 42047fde1a55ddddc24a57bbce4e47aa2907cfd4 Remove shareURL value from config.js
* 2887cd65fcec1184e10f9231c7f5ad01273ac0b9 Fix wrong placement of When in test
* 8ac133027df7c630e2c4de2243dd7b6133fba94d Make the UI use the new ShareURL option
* f0240280ebef9c87edda0e1f12f5da1394257de1 Add ShareURL configuration option
* d683688b0e4353ae41b59ff19424733db3d3eea3 Recursively refresh playlist tracks within smart playlist rules (#3018)
* 180035c1e3815d28fcb0a5a80367ff09b9d56852 Hungarian patch and typo fix for English (#3263)
* a132755d679b21f85889aebe0419a99bbe2e9642 Move update-translations.sh script to workflow directory
* 3107170afd9f557a10f7031f23cb3c9e975a71f9 Improve SQL sanitization
* d3bb4bb9a1452e1bf236c40c9c4f90701e0c6cb4 Bump send and express in /ui (#3260)
* 41f380451cf2966a359aac6c0a271e160475785d Bump path-to-regexp and express in /ui (#3255)
* e65eb225c8834447b38ac4e64b6eb43771f81ad8 Small refactoring - Remove duplication - Remove warning about builtin keyword 
* e8d0f2ec2c4342156f8306474a86cbdf66128663 Allow searching songs by filepath, for songs without Title
* 47872c9e8ae1028117042d46e35383d495324326 Fix pipeline
* 9ae2ec1a071d7c07e77363963606ebaffaa796be Ignore #snapshot folders when scanning. Fixes #3257
* a1866c7ff38f0aa69db63d4c348102272b69f02b Fix log message
* 9f1794b97ee253811f5c77b5474236aee2ad9934 Only refresh smart playlist when fetching first track (#3244)
* e1762882e37781ccf9f3e4ac0d72be56e0fd7a03 Bump github.com/prometheus/client_golang from 1.20.2 to 1.20.3 (#3245)
* 870b217eb9d53dac71932434abb705cf16b2c28d Bump github.com/pressly/goose/v3 from 3.21.1 to 3.22.0 (#3247)
* 53af567b4515e094bfebe193890aff78a5dbec75 Bump golang.org/x/image from 0.19.0 to 0.20.0 (#3248)
* 605aaf87d8b5afaf773fff5fe68bf550d3028fb8 Bump github.com/mattn/go-sqlite3 from 1.14.22 to 1.14.23 (#3249)
* 9950538089a55ea77fa20d160955c87bf3d94cda Bump github.com/mattn/go-zglob from 0.0.5 to 0.0.6 (#3231)
* 4a55a148cfc6b9d7c5029490f61cd60a3f431792 refactor(core): Refactor selectTranscodingOptions function (#3227)
* c1b75bca51e1d1c1e3aa6b39f77f493dfdacfe6a Improve change detection for POEditor files
* 5baab4af77d2fb482de26f76820595cad334ef5b Update dev container to use Go 1.23 and customizations object (#3228)
* 4c87a39242c66143dd40f1e69956c13238061202 Add Basque localisation (#3221)
* fc5d18feb7932bd51acb5196dcbb20fda729c487 Change error code type to avoid integer overflow conversion warning
* 4612b0a518b53f419a67798874659dc976bbfe8a Bump Go dependencies
* 68ddbf4856fd98fb3a5ac597f6c30aa538f3f00c Add i18n lint job
* a6d72d86230d9a77237a60f1816cf383654118fb Bump webpack from 5.76.1 to 5.94.0 in /ui (#3218)
* 1a41525a7e1e21cb6dc9fc19418316670f800a36 Upgrade to 1.23, allow override CI_RELEASER_VERSION for and 
* 8ca1aefad657f6d4a8a4a57e6f435a974327bcff Change DefaultPlaylistPublicVisibility to false
* 67d11dd144423c1556c5d4dc2e54b9b857267240 feat: imported playlists are public by default (#3143)
* 9f65f8f5a85e3da40b8371ce275aee22a37176ec Update translations (#3164)
* bc06a599193afdc481dcb6c01217fcd77a15c9bd Upgrade TagLib 2.0.2, GoReleaser 2.2.0 (#3217)
* 6709ab3c5e02091ed936d2f04b86f13f543a284f fix(common): Hide Share/Get Info items in disc context menu - #3204 (#3209)
* 195f2b3f3849d6d07736aeaa0b652a9cbf5f7a5b Bump @testing-library/jest-dom from 6.4.8 to 6.5.0 in /ui (#3216)
* 6ea688e720e0f38159442af0c1c8bc47aefff11f Bump github.com/prometheus/client_golang from 1.20.0 to 1.20.2 (#3213)
* 496c95fd47c85180c0b7e0de0c10e8aa7d749de3 Bump github.com/go-chi/httprate from 0.12.1 to 0.14.0 (#3211)
* 108bf31148c74e4dfa3b8058277f722494cc942a Bump github.com/pelletier/go-toml/v2 from 2.2.2 to 2.2.3 (#3212)
* 7c81143ca9233bec71418b65a78daa3e1fc1a56b Bump github.com/onsi/ginkgo/v2 from 2.20.0 to 2.20.1 (#3215)
* 533c394f0927205de50799f02ce0bd16f52687a4 Bump github.com/jellydator/ttlcache/v3 from 3.2.0 to 3.2.1 (#3214)
* c95fa11a2fa25d1a4ed9a75b75262b04d5137671 Remove potential integer overflow conversion uint64 -> int64
* 5d818496030f2a58d0ef83715a138629c4a611a5 Fix lint errors
* 1a8bef07439aa1923224cdf133c51121ba000d9d Bump react-icons from 5.2.1 to 5.3.0 in /ui (#3200)
* 85bf7b568486cca13b62e6fab4327f5afe894769 Bump @testing-library/jest-dom from 6.4.6 to 6.4.8 in /ui (#3172)
* bdbff1ea3821c9d4d769d5dee899fac7227e573a Bump prettier from 3.3.2 to 3.3.3 in /ui (#3171)
* 5d5804878031036eb1f74efe811a47e6203da992 Bump github.com/prometheus/client_golang from 1.19.1 to 1.20.0 (#3199)
* 723f01d98cf6a31c2ca48737912e985fa2b311e3 Fixing Build/lint error: "non-constant format string in call to fmt.Errorf (govet)" (#3198)
* c4bd0e67faa1acddaa572686ab1aea4e15cbee7b Upgrade Go to 1.23 (#3190)
* 0c33523f45a5e07f6631d144dae51267fe82cdd3 Bump dependencies
* 14d085f651447ef67ce76b08999a374ccde86980 Deprecate 
* 4d4c71212f535e29e0013226c070d08c9d39b460 Build UI bundle on demand
* e1ba152a38dcb35e8a0552a99471e7f95913ed42 Reduce noise in logs when pre-caching artwork
* eaa7f7c7e95440e80296cf457baf393a3e6fde02 Fix Player filter
* 290333ec5984164169d280cb6de0a166a6cf2da4 Use same key for replaygain's preAmp (#3184)
* fa85e2a7816a6fe3829a4c0d8e893e982b0985da Use userId in player, other fixes (#3182)
* 5360283bb0368c5226b301f99b7095a54407b053 Bump github.com/onsi/gomega from 1.33.1 to 1.34.0 (#3176)
* e59d81bf78b30a3a4b487164287f6ee83f2ed179 Bump github.com/microcosm-cc/bluemonday from 1.0.26 to 1.0.27 (#3141)
* 7b2ddfd65a2b67a6db681e8709f9fc6ee7e38230 Fix "Cannot read properties of undefined". Closes #3070
* 76c3f5131a092cbaaa1024ad42cc287285c6157f Use SHA256 in Gravatar URLs
* f577704d7add787e71f1380cab8f83dab60e1ed6 Add Hungarian language (#3157)
* f46ff73c534be61df89cea665529fa7a79be9170 Bump github.com/go-chi/httprate from 0.9.0 to 0.10.0 (#3160)
* d046c180bf2b044ad2ed04a870aa41a78a16d2be Fix race condition
* 9b4abd9e5a1b5111bc127bfd96041c39ec78e206 Add Auto-Import toggle switch to playlists list view.
* 0de5f594fec8887c066f9af3feaacb2d13a57e5f Remove unnecessary Fragment component.
* 33717f26d4903fb45e8957654ff59112a6dd7e82 Fix album sorting in Artist page
* 67223958790a190208c9ec379acbc106f094e239 Bump github.com/unrolled/secure from 1.14.0 to 1.15.0 (#3127)
* 2667ad3921f9b9c16ec0c9c24e2ed3057ff8c675 Bump github.com/go-chi/chi/v5 from 5.0.14 to 5.1.0 (#3126)
* 3e1fa20413323ab73d5ffaed3255a2981e5c29ca fix background color for nord theme (#3124)
* 1802015737aa4d7f430fc83c5521e9af0cb9d4f0 Add Nuclear Theme (#3098)
* 47378c68828861751b9d1a05d3fc9b29ce8dd9f0 Remove unnecessary annotation table primary key
* 81459cc4212b1824b026e46375a629758e2b952c Bump github.com/spf13/cobra from 1.8.0 to 1.8.1 (#3095)
* 4cda3a58dcd077f55361f0c7ed74a2dc53b8f38a Bump braces from 3.0.2 to 3.0.3 in /ui (#3085)
* 56557bb0f3c044b2857d9c6559db039198c8c12b Bump @testing-library/jest-dom from 6.4.5 to 6.4.6 in /ui (#3096)
* c60f4431799e13934e1d5dedc8b79ad610448108 Bump prettier from 3.3.1 to 3.3.2 in /ui (#3097)
* fa3998d6e1a87f2c8a7f113d77bc74e0122d0104 Bump github.com/pressly/goose/v3 from 3.20.0 to 3.21.1 (#3114)
* 8542ac96c0bda641c679bad12025fc1800f75d61 Bump github.com/go-chi/chi/v5 from 5.0.12 to 5.0.14 (#3115)
* 4557add7ef8641eccfaab758a6ca78809534e102 Bump github.com/lestrrat-go/jwx/v2 from 2.0.21 to 2.1.0 (#3113)
* 004fae43f5680f0dd6ee998c4ae2c714a609722c Bump golang.org/x/image from 0.17.0 to 0.18.0 (#3119)
* 711153596343a8e463f4bfba16b60ba9077640ec Don't panic on PostScan errors. Fix #3118
* 3bc9e75b2843f91f6a1e9b604e321c2bd4fd442a Evict expired items from SimpleCache
* 3993c4d17fd4b25db867c06b817d3fc146e67d60 Upgrade to ttlcache/v3
* 29b7b740ce469201af0a0510f3024adc93ef4c8e Also use SimpleCache in cache.HTTPClient
* 29bc17acd71596ae92131aca728716baf5af9906 Wrap ttlcache in our own SimpleCache implementation
* 4044642abf5a7147c3ed3076c045e0e3b2520171 Add http headers to trace log
* 88eac6d7f3c216e7b7db42d1e0619c476233d582 fix album/media file random sort (#3089)
* f267f55713acdbb53479a84ee7aedc6941ebdab6 Bump github.com/prometheus/client_golang from 1.19.0 to 1.19.1
* 58990c4830801f8f8b34385d21f52292a3797fb0 Bump @testing-library/jest-dom from 6.4.2 to 6.4.5 in /ui
* 7a20233a3531da5f0ce2f6db2e2abca3539e194e Bump ejs from 3.1.9 to 3.1.10 in /ui
* 45679e11c23fd45e072c50eeefbb0074cb3f2272 Bump clsx from 2.1.0 to 2.1.1 in /ui
* 05f34b0cce69a26181e8a5a4fb6df0c65f9ce5f8 Bump golang.org/x/image from 0.16.0 to 0.17.0
* 586e725d6c60e53a4e349af433b061a4ee999460 Bump react-icons from 5.1.0 to 5.2.1 in /ui
* a7c4c72dc63f163a916f6fcdb42407a75b708a07 Bump uuid from 9.0.1 to 10.0.0 in /ui
* 232c45bd06137cdb2440585aef05471f1ee93afd Increase artist image url sizes.
* 1b77830eb4cda830a4bafc0dbe3eb256a612d8ef Do not use lastFM api key and secret to determine if LastFM.Enabled should be set.
* e535f7eb780753c4f0918461f7fe2a71b554a7f7 Bump prettier from 3.3.0 to 3.3.1 in /ui
* d8b2f3d2cf80e13290b4ed59e19d459901f9f605 Don't expose data in the Native API
* 56303cde23a4122d2447cbb266f942601a78d7e4 Add R128_{TRACK,ALBUM}_GAIN support to the scanner (#3072)
* e434ca937255be6e12f11300648b3486de0aa9c2 Change resized image cache key
* 3252fab171e0991fc7954ad5cec586562959486a Increase artist image url sizes.
* 6d526870b7d0a7f7f548dac251418db7f337db1d Fix race condition in external metadata retrieval
* 34678611c0f168846f250f2972bfa43024967cc6 Small refactoring
* 0f7d6b5bc4b763b48feb0a13ce6465956366d311 More micro-optimizations
* 939f3eee97f6f928b756f53c0f88456a61ef2206 Initialize Index Groups regex just once
* b4ef1b1e38eec7e42c1bc56e87b5420197cb1f66 Replace gg.If with cmp.Or
* 11bef060a371d8d6298eaeed7c41cec9dc7fe961 Small refactoring
* abe569001871bd1482b115904a304f5a9178a6be Refactor string utilities into its own package 
* 46fc38bf612bcc0d9b4a465990ce04ba830cf814 Fix tests expectations
* 6d8d519807bc9f488b8e172059f8dcbbe8cf4736 Bump prettier from 3.2.5 to 3.3.0 in /ui (#3069)
* da9cf22b6bc251512a1377d56b89f505372f72e0 Bump github.com/spf13/viper from 1.18.2 to 1.19.0 (#3068)
* 8c3919d6a02a1f2878c5e10512baa8da4cebf468 Simplify dbx wrapper
* 4df69bd334be2659841fa5ce04bf99e41c5600e9 Bump github.com/onsi/ginkgo/v2 from 2.17.3 to 2.19.0 (#3054)
* ee73a9d2975fb1e78a91f8215d7a674fae690e7f Small optimization in MediaFiles.ToAlbum()
* 0488fb92cb02a82924fb1181bf1642f2e87096db Fix image stuttering (#3035)
* 61903facdf5d56277bf57c7aa83bce7fb35b597a Revert isDBInitialized
* b6fce0e6862727fe90a8af1e02903c3207f83e14 Fix XML marshaling of OpenSubsonic structured lyrics (#3041)
* f88d3f82dac1eacdd935f931095043ec9ca6365e Replace panics with log.Fatals
* 55bff343cdaad1f04496f724eda4b55d422d7f17 Optimize SQLite3 access. Mainly separate read access from write access.
* 68f03d01672a868f86e0fd73dde3957df8bf0dab Bump github.com/matoous/go-nanoid/v2 from 2.0.0 to 2.1.0 (#3038)
* 643c763cb4a94e47f09d447e710a4c7d114062e3 Show number of results from a query in the logs
* 67865512c8d495abeb4ccb3248d9d74ef269c831 Update Ukrainian translations (#3029)
* b2ecc1d16f87c60191c06a793057f323ed75a4b0 Fix G404 gosec lint error
* bcaa180fc7e9ba009ac2a0e45593b36b7e3293d1 Fix 32 bits builds
* aeed5a709922f4c1d162bdee12236626aa1fb819 Update caniuse-lite
* 3977ef6e0f287f598b6e4009876239d6f13b686d Make first WebUI random page stick
* 653b4d97f959df49ddf6ac9c76939d2fbbfc9bf1 Add missing Test function
* 98218d045e2ebc848714c8aac46c78f6febc11cf Deterministic pagination in random albums sort (#1841)
* a9feeac793f7b444febf0e2531e39912d24c3f2b Revert "Always run docker steps (#3034)"
* 1c0551f4f7f95a663611ff915a793a2dcf26a51b Revert "Fix docker publishing for PRs"
* 15c9a0ded394bc6e69afc4b0601217f426b2264b Fix docker publishing for PRs
* 5d41165b5bd62bcf89729a682efc5ca50c3a3159 Always run docker steps (#3034)
* 0a763b91d56dcd6511ee667c7df60000c5a02946 Fix lint error
* 4d28d534cc6245727390499b38c96017addbefa2 Refactor random.WeightedChooser, unsing generics
* a7a4fb522c5221d502ec73901375f59d2871d009 Simplify resources.FS
* 7f52ff72dc536da76a30dae602783a952254fc9b Simplify image format detection code
* 8ed07333ed6ff2a19c81dc0a4478d9e14f06f37b Improve resizeImage code readability
* 52235c291d1d3497b3f5c4dbdcf23c0757ef8d60 Fix memory leak in CachedGenreRepository (#3031)
* de0a08915c85ef36c29d14e76353296732ff7cd5 fix bug in jukebox: property unavailable (#3024)
* 45c4583f1b4b50e9f1d2cdc4cae219e5bd5104bc Fix race condition
* 478c709a6444774bf1f6ff7d30f6dcddabaad5f4 Associate main entities with library
* 477bcaee5875e986637f13b9180e65f702f672ec Store MusicFolder as a library in DB
* 081ef85db6a4fd3e4fa27bcb4af27e0685a14c16 Rename MediaFolder to Library
* 6f2643e55e936d1a0980502e2fc07b2ea61807e3 Refactor to use more Go 1.22 features
* 9ee63b39cb12ce2141413b1f634df537064b5be7 Update Go to 1.22.3

## [v0.52.5](https://github.com/navidrome/navidrome/releases/tag/v0.52.5)

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

## [v0.52.0](https://github.com/navidrome/navidrome/releases/tag/v0.52.0)

Update to latest version from `navidrome/navidrome`

### New in this release

This release upgrades [TagLib to 2.0.1](https://github.com/taglib/taglib/releases/tag/v2.0), improving tag importing in general.
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

## [v0.51.1](https://github.com/navidrome/navidrome/releases/tag/v0.51.1)

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
