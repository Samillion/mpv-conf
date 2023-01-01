local msg = require 'mp.msg'
local utils = require 'mp.utils'

local halt = false

local function doHalt()
	if halt then
		mp.command("quit")
		msg.info('Halt detected, quitting mpv.')
	end
end

mp.register_event('start-file', doHalt)
