---@meta
---@class Payload
---@field type PayloadType Payload type
---@field string string Payload string value, will be empty if type is not STRING
---@field bytes table|nil Payload byte array value, will be empty if type is not BYTE_TABLE
local Payload = {}

---Creates a new payload
---@return Payload
function Payload.new() end

Payload.STRING = 0
Payload.BYTE_TABLE = 1

---@alias PayloadType
---|0 STRING
---|1 BYTE_TABLE

return Payload
