## Overview

![ModernZ-OSC](https://github.com/user-attachments/assets/9c11c28d-25d7-46e5-9044-67d4653b189a)

<p align="center">
    Configuration files and scripts I use for mpv, tailored to a generally minimal and straightforward use case.
</p>

## Notes

- Using `profile=high-quality`
  - Use with a capable dedicated GPU, otherwise use `profile=fast` or no profile (default)
  - You can view profile details with `mpv --show-profile=high-quality`
- Hardware decoding enabled
  - Using `gpu-api=d3d11` and `hwdec=d3d11va` (Nvidia GPU, Windows)
  - ~~Using `gpu-api=vulkan` and `hwdec=nvdec` (Nvidia GPU)~~
    - Slow startup with `Vulkan+Nvidia`: https://github.com/mpv-player/mpv/issues/13019
- Default keybinds are disabled: `input-default-bindings=no`
    - Custom keybinds are set in [input.conf](https://github.com/Samillion/mpv-conf/blob/master/input.conf)
- Matroska ordered chapters is disabled: `ordered-chapters=no`
- `[Media]` and `[Slideshow]` auto-profiles are system specific, use as reference or adjust
- Some options are Windows OS specific, in use or value
  - `sub-file-paths` (separator) [[details](https://mpv.io/manual/master/#options-sub-file-paths)]
  - `taskbar-progress` [[details](https://mpv.io/manual/master/#options-taskbar-progress)]

> [!IMPORTANT]  
> <ins>**mpv v0.39 or newer is required**</ins> due to reliance on features like `autocreate-playlist`, which replaces `autoload.lua` with native functionality.
> Please review the files before use to understand their contents.

## Configuration
- Main [[mpv.conf](./mpv.conf)]
- Key bindings [[input.conf](./input.conf)]
- Context menu [[menu.conf](./menu.conf)]

## Scripts
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide)) [^1]
- Image-Bindings ([Source](https://github.com/guidocella/mpv-image-config/blob/main/scripts/image-bindings.lua)) [[Modified](./scripts/image-bindings.lua)]
- ModernZ OSC ([Source](https://github.com/Samillion/ModernZ)) [[Config](./script-opts/modernz.conf)] [^2]
- Pause Indicator Lite ([Source](https://github.com/Samillion/ModernZ/tree/main/extras/pause-indicator-lite)) [^3]
- PiP-Lite (Picture-in-Picture) ([Source](https://github.com/Samillion/ModernZ/tree/main/extras/pip-lite)) [^4]
- Sponsorblock-minimal ([Source](https://codeberg.org/jouni/mpv_sponsorblock_minimal))
- Thumbfast ([Source](https://github.com/po5/thumbfast)) [[Config](./script-opts/thumbfast.conf)]
  - Windows: If you get an error `cannot create mpv subprocess` this https://github.com/po5/thumbfast/issues/154#issuecomment-3437029385 shows how to fix it, which is basically reverting this commit [po5/thumbfast@9deb073](https://github.com/po5/thumbfast/commit/9deb0733c4e36938cf90e42ddfb7a19a8b2f4641)
- ytdlAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat)) [[Config](./script-opts/ytdlautoformat.conf)] [^5]

[^1]: `BoxToWide` is a script written and maintained by me.
[^2]: `ModernZ` is a fork maintained by me.
[^3]: `Pause Indicator Lite` is a script written and maintained by me.
[^4]: `PiP-Lite (Picture-in-Picture)` is a script written and maintained by me.
[^5]: `ytdlAutoFormat` is a script written and maintained by me.


> [!NOTE]
> Source links lead to the respective repositories of the original authors.

## File Locations
- Windows: `%APPDATA%\mpv\` or `C:\users\USERNAME\AppData\Roaming\mpv\`
- Linux: `~/.config/mpv/` or `/home/USERNAME/.config/mpv/`
- Mac: `~/.config/mpv/` or `/Users/USERNAME/.config/mpv/`

```
📁 mpv/
│   ├── 📄 input.conf
|   ├── 📄 menu.conf
│   └── 📄 mpv.conf
├── 📁 fonts/
│   ├── 📄 fluent-system-icons.ttf
│   └── 📄 material-design-icons.ttf
├── 📁 script-opts/
│   ├── 📄 modernz.conf
│   ├── 📄 thumbfast.conf
│   └── 📄 ytdlautoformat.conf
└── 📁 scripts/
    ├── 📄 boxtowide.lua
    ├── 📄 image-bindings.lua
    ├── 📄 modernz.lua
    ├── 📄 pause_indicator_lite.lua
    ├── 📄 pip_lite.lua
    ├── 📄 sponsorblock_minimal.lua
    ├── 📄 thumbfast.lua
    └── 📄 ytdlautoformat.lua
```

> [!NOTE]
> More information about files locations can be found [here](https://mpv.io/manual/master/#files)
