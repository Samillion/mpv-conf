# mpv-conf
My personal mpv configuration. It's not unique and it is minimum. It works well for my use case, so if you're after crisp 4k upscaling and such, this isn't the configuration for you.

For example:
- All default keybinds are disabled, only very few are set in `input.conf`
- MKV Chapters option is disabled `no-ordered-chapters`
- Hardware decoding disabled `hwdec=no`, unless videos are 2k+
- Profile is set to fast mode `profile=fast` by default
- Huge cache by default (~1.5GB+~400MiB)

Before using, review the files first, to know what's going on.

## Scripts
- Autoload ([Source](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua)) [[Config](./script-opts/autoload.conf)]
- Console ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/console.lua))
- Stats ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/stats.lua))
- ModernX OSC ([Source](https://github.com/zydezu/ModernX)) [[Config](./script-opts/modernx.conf)]
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [^1]

[^1]: Disclosure: Both `BoxToWide` and `YTDLAutoFormat` are scripts written and maintained by me.

> [!NOTE]
> Source links lead to the unmodified scripts on the respective repositories of the original authors.

## Preview

![image](https://github.com/user-attachments/assets/ffe8c35e-7f59-44b8-8125-63b0eb56241f)
