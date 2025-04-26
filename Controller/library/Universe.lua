---@meta
---@class Universe
local Universe = {}

---Gets the current level of a channel in the universe
---@param channel integer Channel number (1-512)
---@return integer
function Universe:get_channel_value(channel) end

---Parks an output channel at the given value
---@param channel integer Channel number (1-512)
---@param value integer Value to park the channel at (0-255)
function Universe:park(channel, value) end

---Clears the parked value on an output channel
---@param channel integer Channel number (1-512)
function Universe:unpark(channel) end

return Universe