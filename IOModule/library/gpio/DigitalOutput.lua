---@meta
---@class DigitalOutput
---@field state boolean #Read/write state of the digital output
local DigitalOutput = {}

---Creates a new digital output instance
---@return DigitalOutput
function DigitalOutput.new() end

---Binds the output instance to a digital output
---@param input any Object obtained from a user property of type "digitalOutput"
---@return boolean #False if the output is already in use by another IO module
function DigitalOutput:bind(input) end

---Closes the instance, releasing the resource for use elsewhere
function DigitalOutput:close() end

return DigitalOutput