---@meta
---@class Override A fixture or group override.
local Override = {}

---@alias CrossfadePath
---| '"Default"'
---| '"Linear"'
---| '"Start"'
---| '"End"'
---| '"Braked"'
---| '"Accelerated"'
---| '"Damped"'
---| '"Overshoot"'
---| '"Col At Start"'
---| '"Col At End"'
---| '"Int At Start"'
---| '"Int At End"'
---| '"Colour First"'
---| '"Intensity First"'

---Overrides the intensity, red, green, and blue levels for the fixture or group.
---@param intensity integer (0-255) Intensity override
---@param red integer (0-255) Red override
---@param green integer (0-255) Green override
---@param blue integer (0-255) Blue override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_irgb(intensity, red, green, blue, fade, path) end

--- Overrides the intensity level for the fixture or group.
---@param intensity integer (0-255) Intensity override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_intensity(intensity, fade, path) end

--- Overrides the red level for the fixture or group.
---@param red integer (0-255) Red level override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_red(red, fade, path) end

--- Overrides the green level for the fixture or group.
---@param green integer (0-255) Green level override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_green(green, fade, path) end

--- Overrides the blue level for the fixture or group.
---@param blue integer (0-255) Blue level override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_blue(blue, fade, path) end

--- Overrides the temperature level for the fixture or group.
--- @param temperature integer (0-255) Temperature level override
---@param fade? number Optional. Fade time to apply the override change, in seconds.
---@param path? CrossfadePath Optional. Crossfade path to use when applying the override.
function Override:set_temperature(temperature, fade, path) end

--- Removes any override on the fixture or group.
--- @param fade? number Optional. Fade time to clear the override, in seconds.
function Override:clear(fade) end

return Override