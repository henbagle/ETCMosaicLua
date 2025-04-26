---@meta
---@class property
---@field value any #Property value
---@field is_enabled fun():boolean #Evaluated at compile time to determine if the property is enabled
---@field is_visible fun():boolean #Evaluated at compile time to determine if the property is visible
local property = {}

return property