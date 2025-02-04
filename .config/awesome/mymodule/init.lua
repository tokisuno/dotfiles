local setmetatable = setmetatable
local os = os
local textbox = require("wibox.widget.textbox")
local timer = require("gears.timer")
local gtable = require("gears.table")

local minutes_left = { mt = {} }

local ml_func = function ()
    local time = os.date("*t")
    local hours = time.hour
    local minutes = time.min
    return "MINS:" .. 1440 - ((hours * 60) + minutes)
end

--- Set the clock's refresh rate.
--
-- @property refresh
-- @tparam[opt=60] number refresh How often the clock is updated, in seconds
-- @propertyunit second
-- @negativeallowed false

function minutes_left:set_refresh(refresh)
    self._private.refresh = refresh or self._private.refresh
    self:force_update()
end

function minutes_left:get_refresh()
    return self._private.refresh
end

--- Force a textclock to update now.
--
-- @noreturn
-- @method force_update
function minutes_left:force_update()
    self._timer:emit_signal("timeout")
end

--- This lowers the timeout so that it occurs "correctly". For example, a timeout
-- of 60 is rounded so that it occurs the next time the clock reads ":00 seconds".
local function calc_timeout(real_timeout)
    return real_timeout - os.time() % real_timeout
end

--- Create a textclock widget. It draws the time it is in a textbox.
--
-- @tparam[opt=" %a %b %d&comma; %H:%M "] string format The time [format](#format).
-- @tparam[opt=60] number refresh How often to update the time (in seconds).
-- @treturn table A textbox widget.
-- @constructorfct wibox.widget.textclock
local function new(refresh)
    local w = textbox()
    gtable.crush(w, minutes_left, true)

    w._private.refresh = refresh or 60

    function w._private.minutes_left_update_cb()
        local time = os.date("*t")
        local str = "MINS:" .. 1440 - ((time.hour * 60) + time.min)
        -- if str == nil then
        --     require("gears.debug").print_warning("minutes_left: "
        --     .. "g_date_time_format() failed for format "
        --     .. "'" .. w._private.format .. "'")
        -- end
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
