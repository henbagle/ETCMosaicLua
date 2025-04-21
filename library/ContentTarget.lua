---@meta
---@class ContentTarget Only supported on Atlas and Atlas Pro.
---@field master_intensity_level Variant
---@field rotation_offset number Atlas Pro only
---@field x_position_offset number Atlas Pro only
---@field y_position_offset number Atlas Pro only

local ContentTarget = {}

---Masters the intensity of the content target
---@param level number Master level to set on the content target.
---@param fade? number Optional. Fade time to apply the intensity change, in seconds.
---@param delay? number Optional. Time to wait before applying the intensity change, in seconds.
function ContentTarget:set_master_intensity(level, fade, delay) end

---@param angle? number Optional. Angle of rotation to transition to, in degrees. Defaults to zero.
---@param count? integer Number of times to repeat the rotation transformation.
---@param period? integer The period of the rotation, in seconds - the time to perform one count of the transformation.
---@param delay? integer Time to wait before starting the rotation, in seconds.
---@param useShortestPath? boolean
function ContentTarget:transition_rotation(angle, count, period, delay, useShortestPath) end

---Moves the content target along the y axis
---@param y_offset? number Optional. Offset to apply to the y position. Defaults to 0.
---@param count? integer Number of times to repeat the y translation.
---@param period? integer The period of the translation, in seconds - the time to perform one count of the transformation.
---@param delay? integer Time to wait before starting the translation, in seconds.
function ContentTarget:transition_y_position(y_offset, count, period, delay) end

return ContentTarget