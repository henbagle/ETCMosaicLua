---@meta
---@class Serial : Stream
local Serial = {}

---Creates a new serial instance
---@return Serial
function Serial.new() end

---Binds the serial instance to a serial interface
---@param interface any Object obtained from a user property of type "serial"
---@return boolean #False if the input is already in use by another IO module
function Serial:bind(interface) end

---Closes the serial interface, releasing the resource for use elsewhere
function Serial:close() end

return Serial