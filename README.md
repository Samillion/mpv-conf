# mpv-conf
My personal mpv configuration. It's not unique, it is minimum and with many features disabled or set to its low setting. It works well for my use case, so if you're after crisp 4k upscaling and such, this isn't the configuration for you.

For example:
- All default keybinds are disabled, only very few are set in `input.conf`
- MKV Chapters is disabled `no-ordered-chapters`
- Hardware decoding disabled `hwdec=no`
- Profile is set to Fast mode `profile=fast`

Before using, review the files first, to know what's going on.

## Scripts
- Autoload ([Source](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua)) [[Config](./script-opts/autoload.conf)]
- Console ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/console.lua))
- Stats ([Source](https://github.com/mpv-player/mpv/blob/master/player/lua/stats.lua))
- Modern-F OSC ([Source](https://github.com/FinnRaze/mpv-osc-modern-f)) [[Config](./script-opts/modernf.conf)]
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide))
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat))

## Note (OSC)
I modify Modern-F OSC to replace the `Toggle Info` button with the `On Top` button in the `mid` layout, as I don't really use it.

I find the mid layout function:
```lua
layouts["mid"] = function ()
```

Then, I replace this line:
```lua
lo = add_layout('tog_info')
```

With:
```lua
lo = add_layout('ontop')
```

**IMPORTANT:** Make sure it's the correct one relating to the mid layout `layouts["mid"]`.

## Preview

![image](https://github.com/user-attachments/assets/bcd1c7fa-6a5f-4661-bf94-e5c43178d3f6)

