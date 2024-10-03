# mpv-conf
My personal mpv configuration. It is minimum and works well for my use case, which is usually a simple one. Though I have an `auto-profile` for 2K+ videos included in my `mpv.conf`.

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
- ModernZ OSC ([Source](https://github.com/Samillion/ModernZ)) [[Config](./script-opts/modernz.conf)] [^2]
- Select ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/select.lua))
- Sponsorblock-minimal ([Source](https://codeberg.org/jouni/mpv_sponsorblock_minimal))
- Stats ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/stats.lua))
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [^3]

[^1]: `BoxToWide` is a script written and maintained by me.
[^2]: `ModernZ` is a fork maintained by me.
[^3]: `YTDLAutoFormat` is a script written and maintained by me.

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
│       modernz.conf
│       thumbfast.conf
│
└───scripts
        boxtowide.lua
        console.lua
        modernz.lua
        select.lua
        sponsorblock_minimal.lua
        stats.lua
        thumbfast.lua
        ytdlautoformat.lua
```

> [!NOTE]
> More information about files locations can be found  [here](https://mpv.io/manual/master/#files)

## Preview

![Preview](https://github.com/user-attachments/assets/f43d4c34-2746-40f8-9068-3cbea538a0bd)

