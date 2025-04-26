---@meta

---@alias ip_address string | integer

---@class Variant
---@field integer integer
---@field range integer
---@field real number
---@field string string
---@field ip_address ip_address
local Variant = {}

---@return boolean
function Variant:is_integer() end

---@return boolean
function Variant:is_string() end

---@return boolean
function Variant:is_ip_address() end

return Variant