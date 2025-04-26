---@meta
---@class DigitalInput
---@field state boolean|nil #Read only. Current state of the digital input, nil if not bound
---@field held boolean|nil #Read only. True if the input is held longer than the held timeout, nil if not bound
---@field state_changed_handler fun(digital_input:DigitalInput, state:boolean) #Called when the state changes
---@field held_handler fun(digital_input:DigitalInput, state:boolean) #Called when the input has been held for the held timeout
---@field repeat_handler fun(digital_input:DigitalInput, state:boolean) #Called at regular intervals when the input is held beyond the held timeout
local DigitalInput = {}

---Creates a new analog input instance
---@return DigitalInput
function DigitalInput.new() end

---Binds the input instance to an analog input
---@param input any Object obtained from a user property of type "analogInput"
---@return boolean #False if the input is already in use by another IO module
function DigitalInput:bind(input) end

---Closes the interface, releasing the resource for use elsewhere
function DigitalInput:close() end

return DigitalInput