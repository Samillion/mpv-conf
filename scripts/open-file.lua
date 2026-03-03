--[[

    A fork of https://github.com/rossy/mpv-open-file-dialog

    Open file dialog on Windows with a keybind or context-menu

    input.conf: Ctrl+o script-binding open_file/open
    menu.conf: &Open File	script-binding open_file/open

--]]

local utils = require "mp.utils"

local function open()
    local was_ontop = mp.get_property_native("ontop")
    if was_ontop then mp.set_property_native("ontop", false) end

    local res = utils.subprocess({
        args = {
            'powershell',
            '-NoProfile',
            '-STA',
            '-Command',
            [[
            Add-Type -AssemblyName PresentationFramework
            $ofd = New-Object Microsoft.Win32.OpenFileDialog
            $ofd.Multiselect = $true
            $ofd.Filter = "Video files|*.mkv;*.mp4;*.avi;*.mov;*.webm;*.wmv;*.gif|All files|*.*"

            if ($ofd.ShowDialog() -eq $true) {
                $ofd.FileNames -join "`n"
            }
            ]]
        },
        cancellable = false,
        capture_stdout = true,
        capture_stderr = true,
    })

    if was_ontop then mp.set_property_native("ontop", true) end

    if not res or res.status ~= 0 or not res.stdout then
        return
    end

    local first = true
    for filename in string.gmatch(res.stdout, "[^\r\n]+") do
        mp.commandv("loadfile", filename, first and "replace" or "append")
        first = false
    end
end

mp.add_key_binding(nil, "open", open)
