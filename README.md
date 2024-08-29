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
I modify Modern-F OSC to include the `On Top` button in the `mid` layout choice. The code I use is copied from the `reduced` layout, so it's all from the same author, just addition, basically.

I find the mid layout function:
```lua
layouts["mid"] = function ()
```

Then, right before the toggle info button line:
```lua
lo = add_layout('tog_info')
```

I add the following:
```lua
    lo = add_layout('ontop')
    lo.geometry = {x = osc_geo.w - 137, y = refY - 40, an = 5, w = 24, h = 24}
    lo.style = osc_styles.Ctrl3
    lo.visible = (osc_param.playresx >= 600)
```

![image](https://github.com/Samillion/mpv-conf/assets/17427046/71e564f8-6e25-4d48-a51c-433e49b18c76)
