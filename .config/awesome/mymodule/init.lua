-- modified version of the awful.widget.textclock() widget
-- found in awesomewm source code

local setmetatable = setmetatable
local os = os
local textbox = require("wibox.widget.textbox")
local timer = require("gears.timer")
local gtable = require("gears.table")

local minutes_left = { mt = {} }

-- local ml_func = function ()
--     local time = os.date("*t")
--     local hours = time.hour
--     local minutes = time.min
--     return "MINS:" .. 1440 - ((hours * 60) + minutes)
-- end

function minutes_left:set_refresh(refresh)
    self._private.refresh = refresh or self._private.refresh
    self:force_update()
end

function minutes_left:get_refresh()
    return self._private.refresh
end

function minutes_left:force_update()
    self._timer:emit_signal("timeout")
end

local function calc_timeout(real_timeout)
    return real_timeout - os.time() % real_timeout
end

local function new(refresh)
    local w = textbox()
    gtable.crush(w, minutes_left, true)

    w._private.refresh = refresh or 60

    function w._private.minutes_left_update_cb()
        local time = os.date("*t")
        local str = "MINS:" .. 1440 - ((time.hour * 60) + time.min)

        w:set_markup(str)
        w._timer.timeout = calc_timeout(w._private.refresh)
        w._timer:again()
        return true -- Continue the timer
    end

    w._timer = timer.weak_start_new(refresh, w._private.minutes_left_update_cb)
    w:force_update()
    return w
end

function minutes_left.mt:__call(...)
    return new(...)
end

return setmetatable(minutes_left, minutes_left.mt)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
