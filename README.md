## mpv-conf
![modernz-osc](https://github.com/user-attachments/assets/88183ead-0077-4bd1-b8cb-54d2953728c5)

My personal mpv configuration is minimal and tailored to my simple use case.

#### Noteworthy:

- Large cache size: `~1.5GB + ~400MiB`
- Hardware decoding disabled: `hwdec=no`
- All keybinds disabled, except for a few in `input.conf`
- Matroska ordered chapters disabled: `ordered-chapters=no`
- `watch-later-dir` set to `~~/cache/watch_later` (folder[s] created manually)
- `screenshot-template` saves images to the desktop: `~/Desktop/%F-(%P)-%n`
- `sub-file-paths` set with `;` separator for Windows
- Default `ytdl-format` ignores VP9 codec: `bv[vcodec!~='vp0?9']+ba/b`
- `Slideshow` auto-profile is system-specific, kept for reference.

Please review the files before using to understand what is included.

> [!IMPORTANT]  
> This configuration requires mpv v0.39+, as it utilizes features like `autocreate-playlist` introduced in that version (and some v0.38 nightlies), replacing the `autoload.lua` script as a native function.

## Configuration
- Main configuration [[mpv.conf](./mpv.conf)]
- Input key bindings [[input.conf](./input.conf)]

## Scripts
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- Image-Bindings ([Source](https://github.com/guidocella/mpv-image-config/blob/main/scripts/image-bindings.lua)) [[Modified](./scripts/image-bindings.lua)]
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
│       fluent-system-icons.ttf
│
├───script-opts
│       modernz.conf
│       thumbfast.conf
│
└───scripts
        boxtowide.lua
        image-bindings.lua
        modernz.lua
        pause_indicator_lite.lua
        SmartCopyPaste.lua
        sponsorblock_minimal.lua
        thumbfast.lua
        ytdlautoformat.lua
```

> [!NOTE]
> More information about files locations can be found [here](https://mpv.io/manual/master/#files)
