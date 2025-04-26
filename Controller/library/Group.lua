---@meta
---@class Group
---@field name string Group name
---@field master_intensity_level Variant The intensity level that this group is currently being mastered to
local Group = {}

---Masters the intensity of the group
---@param level number Master level to set on the group
---@param fade? number Optional. Fade time to apply the intensity change, in seconds
---@param delay? number Optional. Time to wait before applying the intensity change, in seconds
function Group:set_master_intensity(level, fade, delay) end

return Group