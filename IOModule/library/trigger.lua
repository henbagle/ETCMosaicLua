---@meta
---@class trigger
---@field test fun(data:any, properties:table<string,any>, variables:table<integer,Variant>): boolean #Test function to determine if the trigger should fire
---@field description_handler fun(properties:table<string,any>): string #Description of the trigger
local trigger = {}

---Fires the trigger, optionally passing a value
---@param value any
function trigger:fire(value) end

return trigger