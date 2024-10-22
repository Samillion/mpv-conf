## mpv-conf
![Preview](https://github.com/user-attachments/assets/115b0dda-c1d7-484c-9032-8005b6520540)

My personal mpv configuration. It is minimum and works well for my use case, which is usually a simple one.

#### Noteworthy:

- Huge cache `~1.5GB + ~400MiB`
- Hardware decoding is disabled `hwdec=no`
- All keybinds are disabled, only few are set in `input.conf`
- Matroska ordered chapters is disabled `ordered-chapters=no`
- `watch-later-dir` is set to `~~/cache/watch_later`, the folder(s) were added manually
- `screenshot-template` is set to `~/Desktop/%F-(%P)-%n` to save image on desktop with the specified name formatting
- `sub-file-paths` are set for Windows with the `;` seperator, below it is the one for Unix
- Default `ytdl-format` is set to ignore VP9 codec with `bv[vcodec!~='vp0?9']+ba/b`
- `Slideshow` auto-profile is very specific to my computer, leaving it there for reference.

Before using, please review the files first to know what's being used.

> [!IMPORTANT]
> My configuration works with [mpv v0.39.0](https://github.com/mpv-player/mpv/discussions/14903) and higher due to the use of things like `autocreate-playlist` that were introduced starting that version (and some v0.38 nightlies), which replaces `autoload.lua` script as a native feature.

## Configuration
- Main configuration [[mpv.conf](./mpv.conf)]
- Input key bindings [[input.conf](./input.conf)]

## Scripts
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- ModernZ OSC ([Source](https://github.com/Samillion/ModernZ)) [[Config](./script-opts/modernz.conf)] [^2]
- Pause Indicator Lite ([Source](https://github.com/Samillion/ModernZ/tree/main/extras/pause-indicator-lite)) [^3]
- SmartCopyPaste ([Source](https://github.com/Eisa01/mpv-scripts?tab=readme-ov-file#smartcopypaste))
- Sponsorblock-minimal ([Source](https://codeberg.org/jouni/mpv_sponsorblock_minimal))
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
- ytdlAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [^4]

[^1]: `BoxToWide` is a script written and maintained by me.
[^2]: `ModernZ` is a fork maintained by me.
[^3]: `Pause Indicator Lite` is a script written and maintained by me.
[^4]: `ytdlAutoFormat` is a script written and maintained by me.


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
│       Material-Design-Iconic-Round.ttf
│
├───script-opts
│       modernz.conf
│       thumbfast.conf
│
└───scripts
        boxtowide.lua
        modernz.lua
        pause_indicator_lite.lua
        SmartCopyPaste.lua
        sponsorblock_minimal.lua
        thumbfast.lua
        ytdlautoformat.lua
```

> [!NOTE]
> More information about files locations can be found  [here](https://mpv.io/manual/master/#files)
