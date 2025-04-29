---@meta
---@class action
---@field handler fun(properties:table<string,any>, variables:table<integer,Variant>) #Action handler that is executed
---@field description_handler fun(properties:table<string,any>): string #Description of the action
---@field issues_handler fun(properties:table<string,any>): string|string[]|nil #Displays issue strings based on the properties. If nil, no issues are displayed
local action = {}

return action