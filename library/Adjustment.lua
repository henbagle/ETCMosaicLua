---@meta
---@class Adjustment Only supported on Atlas Pro.
---@field rotation_offset number
---@field x_position_offset number
---@field y_position_offset number
local Adjustment = {}

---Applies a rotation to the adjustment target
---@param angle? number Optional. Angle of rotation to transition to, in degrees. Defaults to zero.
---@param count? integer Number of times to repeat the rotation transformation.
---@param period? integer The period of the rotation, in seconds - the time to perform one count of the transformation.
---@param delay? integer Time to wait before starting the rotation, in seconds.
---@param useShortestPath? boolean
function Adjustment:transition_rotation(angle, count, period, delay, useShortestPath) end

---Moves the adjustment target along the x axis
---@param x_offset? number Optional. Offset to apply to the x position. Defaults to 0.
---@param count? integer Number of times to repeat the x translation.
---@param period? integer The period of the translation, in seconds - the time to perform one count of the transformation.
---@param delay? integer Time to wait before starting the translation, in seconds.
function Adjustment:transition_x_position(x_offset, count, period, delay) end

---Moves the adjustment target along the y axis
---@param y_offset? number Optional. Offset to apply to the y position. Defaults to 0.
---@param count? integer Number of times to repeat the y translation.
---@param period? integer The period of the translation, in seconds - the time to perform one count of the transformation.
---@param delay? integer Time to wait before starting the translation, in seconds.
function Adjustment:transition_y_position(y_offset, count, period, delay) end

return Adjustment