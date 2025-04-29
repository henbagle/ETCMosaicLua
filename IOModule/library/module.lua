---@meta
---@class module
---@field name string Name of the module
---@field version string Version of the module
---@field api_version string API version of the module
---@field initialize fun() -- Called right after the project loads
---@field net_up fun() -- Called when the network controller interface comes up
---@field net_down fun() -- Called when the network controller interface goes down
---@field cleanup fun() -- Called just before when the project unloads
---@field time_change fun() -- Called when the controller's time changes
---@field shared_table table Shared table for all instances of this module
module = {}

---Reads the value of a property from the module
---@param key string Property name
---@return any #Property value
function module:property(key) end

---Reads a property from the module
---@param key string Property name
---@return property #Property value
function module:property_object(key) end

return module