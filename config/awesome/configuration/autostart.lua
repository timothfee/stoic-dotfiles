local awful = require("awful")
local gears = require("gears")

local function autostart_apps()
	-- Xrandr
	awful.spawn.with_shell("xrandr --output HDMI-0 --mode 1920x1080 --rate 240")

	-- Rounded Corners
	client.connect_signal("manage", function(c)
		c.shape = gears.shape.rounded_rect
	end)

	-- Picom
	awful.spawn.with_shell("picom --config ~/.config/picom/config.conf -b")

	-- Bluetooth
	awful.spawn.with_shell("blueman-applet")
end

autostart_apps()
