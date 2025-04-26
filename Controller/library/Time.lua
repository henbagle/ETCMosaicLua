---@meta
---@class time
---@field is_dst boolean Is daylight savings time?
---@field gmt_offset integer GMT offset in minutes
time = {}

---@return DateTime
function time.get_current_time() end

---Gets the sunrise for the current or the input date
---@param date? DateTime Optional date to get sunrise time for
---@return DateTime
function time.get_sunrise(date) end

---Gets the sunset for the current or the input date
---@param date? DateTime Optional date to get sunset time for
---@return DateTime
function time.get_sunset(date) end

---Gets the civil dawn for the current or the input date
---@param date? DateTime Optional date to get time for
---@return DateTime
function time.get_civil_dawn(date) end

---Gets the civil dusk for the current or the input date
---@param date? DateTime Optional date to get time for
---@return DateTime
function time.get_civil_dusk(date) end

---Gets the nautical dawn for the current or the input date
---@param date? DateTime Optional date to get time for
---@return DateTime
function time.get_nautical_dawn(date) end

---Gets the nautical dusk for the current or the input date
---@param date? DateTime Optional date to get time for
---@return DateTime
function time.get_nautical_dusk(date) end

---Gets the new moon for the current or the input date
---@param date? DateTime Optional date to get moon for
---@return DateTime
function time.get_new_moon(date) end

---Gets the first quarter moon for the current or the input date
---@param date? DateTime Optional date to get moon for
---@return DateTime
function time.get_first_quarter(date) end

---Gets the full moon for the current or the input date
---@param date? DateTime Optional date to get moon for
---@return DateTime
function time.get_full_moon(date) end

---Gets the third quarter moon for the current or the input date
---@param date? DateTime Optional date to get moon for
---@return DateTime
function time.get_third_quarter(date) end

return time