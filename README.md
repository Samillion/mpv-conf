# mpv-conf
My personal mpv configuration. It is minimum and works well for my use case, which is usually a simple one that doesn't involve upscaling. Though I have an `auto-profile` for 2K+ videos included in my `mpv.conf`.

Noteworthy details:
- Huge cache `~1.5GB + ~400MiB`
- Hardware decoding is disabled `hwdec=no`
- All keybinds are disabled, only few are set in `input.conf`
- Matroska ordered chapters is disabled `ordered-chapters=no`

Before using, review the files first to know what's being used.

> [!IMPORTANT]
> My configuration works with [mpv v0.39.0](https://github.com/mpv-player/mpv/discussions/14903) and higher due to the use of things like `autocreate-playlist` that were introduced starting that version (and some v0.38 nightlies), which replaces `autoload.lua` script as a native feature.

## Configuration
- Main configuration [[mpv.conf](./mpv.conf)]
- Input key bindings [[input.conf](./input.conf)]

## Scripts
- Console ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/console.lua))
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- ModernX-Lite OSC ([Source](https://github.com/Samillion/ModernX-Lite)) [^2]
- Select ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/select.lua))
- Stats ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/stats.lua))
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [^1]

[^1]: Disclosure: Both `BoxToWide` and `YTDLAutoFormat` are scripts written and maintained by me.
[^2]: ModernX-Lite OSC is a fork maintained by me.

> [!NOTE]
> Source links lead to the respective repositories of the original authors.

## Config and Scripts Locations
- Windows: `%APPDATA%\mpv\` or `C:\users\USERNAME\AppData\Roaming\mpv\`
- Linux: `~/.config/mpv/` or `/home/USERNAME/.config/mpv/`
- Mac: `~/.config/mpv/` or `/Users/USERNAME/.config/mpv/`

```
conf/mpv
│   input.conf
│   mpv.conf
│
├───fonts
│       Material-Design-Iconic-Font.ttf
│       Material-Design-Iconic-Round.ttf
│
├───script-opts
│       modernxlite.conf
│       thumbfast.conf
│
└───scripts
        boxtowide.lua
        console.lua
        modernxlite.lua
        select.lua
        stats.lua
        thumbfast.lua
        ytdlautoformat.lua
```

> [!NOTE]
> More information about files locations can be found  [here](https://mpv.io/manual/master/#files)

## Preview

![mpv-preview](https://github.com/user-attachments/assets/41ac707c-c891-4208-8bbf-1e8ab756af06)

