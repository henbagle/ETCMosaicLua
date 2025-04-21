---@meta
---@class InputThreshold
---@field low integer If the input type is DIGITAL, this is the low voltage threshold. If the input type is ANALOG, this marks the low end of the voltage range and voltages at or below this value will be reported as 0%.
---@field high integer If the input type is DIGITAL, this is the high voltage threshold. If the input type is ANALOG, this marks the high end of the voltage range and voltages at or above this value will be reported as 100%.
local InputThreshold = {}

return InputThreshold