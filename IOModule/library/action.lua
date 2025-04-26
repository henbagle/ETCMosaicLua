---@meta
---@class action
---@field handler fun(properties:table<string,any>, variables:table<integer,Variant>): boolean #Action handler that is executed
---@field description_handler fun(properties:table<string,any>): string #Description of the action
local action = {}

return action