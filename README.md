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
- Modern-F OSC ([Source](https://github.com/FinnRaze/mpv-osc-modern-f)) [[Config](./script-opts/modernf.conf)] [[Modification](#modification-osc)]
- BoxToWide ([Source](https://github.com/Samillion/mpv-boxtowide))
- YTDLAutoFormat ([Source](https://github.com/Samillion/mpv-ytdlautoformat))

> [!NOTE]
> Source links lead to the unmodified scripts on the respective repositories of the original authors.

## Modification (OSC)
I modify `Modern-F OSC` to replace the `Toggle Info` button with the `On Top` button in the `mid` layout, as I don't really use that button, I just use the keyboard shortcut.

I find the mid layout function:
```lua
layouts["mid"] = function ()
```

Then, a bit below, I replace this line:
```lua
lo = add_layout('tog_info')
```

With:
```lua
lo = add_layout('ontop')
```

So the result should be:

![image](https://github.com/user-attachments/assets/e597a061-ba1c-4252-ab14-7a8ee13b30c1)


> [!CAUTION]
> Follow the steps above in the exact order to make sure you modify the correct `Toggle Info` line relating to the mid layout, otherwise you might be adjusting the button for another layout and not the mid.

## Preview

![image](https://github.com/user-attachments/assets/bcd1c7fa-6a5f-4661-bf94-e5c43178d3f6)

