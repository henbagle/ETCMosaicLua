---@meta
---@class condition
---@field handler fun(properties:table<string,any>, variables:table<integer,Variant>): boolean #Condition handler function to determine if the condition is met
---@field description_handler fun(properties:table<string,any>): string #Description of the condition
---@field issues_handler fun(properties:table<string,any>): string|string[]|nil #Displays issue strings based on the properties. If nil, no issues are displayed
local condition = {}

return condition