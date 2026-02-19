--[[

    This script adds a PiP mode to ontop (pin).
    When ontop is enabled, window is resized and moved to bottom right.
    Fit and position can by adjusted in options.

    More info: https://github.com/Samillion/mpv-conf

--]]

local options = {
    autofit = "40%x30%",
    autofit_larger = "40%x30%",
    geometry = "100%:100%",       -- bottom-right: -0-0 or 100%:100%
    geometry_restore = "50%:50%"  -- center: 50%:50%
}

local state = {}
local pip_active = false

local function set_pip_mode()
    if mp.get_property_bool("fullscreen") then
        return
    end

    if not pip_active then
        state.autofit = mp.get_property("autofit")
        state.autofit_larger = mp.get_property("autofit-larger")
        pip_active = true
    end

    mp.set_property("autofit", options.autofit)
    mp.set_property("autofit-larger", options.autofit_larger)

    -- delay geometry to avoid race
    mp.add_timeout(0.02, function()
        mp.set_property("geometry", options.geometry)
    end)
end

local function restore_mode()
    if not pip_active then return end

    mp.set_property("autofit",  state.autofit or "")
    mp.set_property("autofit-larger", state.autofit_larger or "")

    -- delay geometry to avoid race
    mp.add_timeout(0.02, function()
        mp.set_property("geometry", options.geometry_restore)
    end)

    pip_active = false
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
