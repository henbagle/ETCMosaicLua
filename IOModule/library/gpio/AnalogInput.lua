---@meta
---@class AnalogInput
---@field level integer #Current level of the analog input, between 0 and 100
---@field level_changed_handler fun(analog_input:AnalogInput, level:integer) #Called when the level changes
local AnalogInput = {}

---Creates a new analog input instance
---@return AnalogInput
function AnalogInput.new() end

---Binds the input instance to an analog input
---@param input any Object obtained from a user property of type "analogInput"
---@return boolean #False if the input is already in use by another IO module
function AnalogInput:bind(input) end

---Closes the interface, releasing the resource for use elsewhere
function AnalogInput:close() end

return AnalogInput