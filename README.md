# mpv-conf
My personal mpv configuration. It's not unique and it is minimum. It works well for my use case, which is usually a simple one that doesn't involve upscaling. Though I have an `auto-profile` for 2K+ videos included in my `mpv.conf`.

For example:
- All default keybinds are disabled, only very few are set in `input.conf`
- Chapters option is disabled `ordered-chapters=no`
- Hardware decoding is disabled `hwdec=no`
- Profile is set to fast mode `profile=fast` by default
- Huge cache by default `~1.5GB + ~400MiB`

Before using, review the files first to know what's being used.

> [!IMPORTANT]
> My configuration works with `mpv v0.39.0` and higher due to the use of things like `autocreate-playlist` that were introduced starting that version, which replaces `autoload.lua` script as a native feature.

## Scripts
- Console ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/console.lua))
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- ModernX OSC ([Source](https://github.com/zydezu/ModernX)) [[Config](./script-opts/modernx.conf)]
- Select ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/select.lua))
- Stats ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/stats.lua))
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [^1]

[^1]: Disclosure: Both `BoxToWide` and `YTDLAutoFormat` are scripts written and maintained by me.

> [!NOTE]
> Source links lead to the respective repositories of the original authors.

## Configuration
- Main [[mpv.conf](./mpv.conf)]
- Input [[input.conf](./input.conf)]

## Preview

![Preview](https://github.com/user-attachments/assets/0f4bfcef-8ff0-4c99-8976-8e845940d27d)
