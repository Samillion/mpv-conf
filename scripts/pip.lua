--[[

    This script resizes and moves window to bottom right of display
    when ontop (pin) is active. A PIP mode.

    More info: https://github.com/Samillion/mpv-conf

--]]

local options = {
    autofit = "40%x30%",
    autofit_larger = "40%x30%",
    geometry = "100%:100%",
}

local state = {}
local pip_active = false

local function set_pip_mode()
    if mp.get_property_bool("fullscreen") then
        return
    end

    -- store current states
    if not pip_active then
        state.autofit = mp.get_property("autofit")
        state.autofit_larger = mp.get_property("autofit-larger")
        state.geometry = mp.get_property("geometry")
        pip_active = true
    end

    -- set pip mode
    mp.set_property("autofit", options.autofit)
    mp.set_property("autofit-larger", options.autofit_larger)
    mp.set_property("geometry", options.geometry)
end

local function restore_mode()
    if pip_active then
        if state.autofit then
            mp.set_property("autofit", state.autofit)
        end
        if state.autofit_larger then
            mp.set_property("autofit-larger", state.autofit_larger)
        end
        if state.geometry then
            mp.set_property("geometry", state.geometry)
        end
        pip_active = false
    end
end

local function on_ontop_change(_, value)
    if value then
        set_pip_mode()
    else
        restore_mode()
    end
end

mp.observe_property("ontop", "bool", on_ontop_change)

-- set pip if leaving fullscreen with ontop enabled
mp.observe_property("fullscreen", "bool", function(_, fs)
    if not fs and mp.get_property_bool("ontop") then
        set_pip_mode()
    end
end)

-- startup ontop handler
if mp.get_property_bool("ontop") and not mp.get_property_bool("fullscreen") then
    set_pip_mode()
end
