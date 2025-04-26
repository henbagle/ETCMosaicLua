---@meta
---@class condition
---@field handler fun(properties:table<string,any>, variables:table<integer,Variant>): boolean #Condition handler function to determine if the condition is met
---@field description_handler fun(properties:table<string,any>): string #Description of the condition
local condition = {}

return condition