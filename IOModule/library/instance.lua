---@meta
---@class instance
---@field name string -- Name of the instance
---@field initialize fun() -- Called right after the project loads
---@field net_up fun() -- Called when the network controller interface comes up
---@field net_down fun() -- Called when the network controller interface goes down
---@field cleanup fun() -- Called just before when the project unloads
---@field broadcast_event fun(variables:integer[]) -- Broadcast receiver handler
---@field time_change fun() -- Called when the controller's time changes
local instance = {}

---Reads the value of a property from the instance
---@param key string Property name
---@return any #Property value
function instance:property(key) end

---Reads a property from the instance
---@param key string Property name
---@return property #Property value
function instance:property_object(key) end

---Gets the value of a status variable from the instance
---@param key string Status variable key
---@return string #Value
function instance:get_status(key) end

---Sets the value of a status variable
---@param key string Status key name
---@param value string Value
function instance:set_status(key, value) end

---Gets a trigger in the instance
---@param name string Trigger name as defined in package.json
---@return trigger #Trigger object
function instance:trigger(name) end

---Gets a condition in the instance
---@param name string Condition name as defined in package.json
---@return condition #Condition object
function instance:condition(name) end

---Gets an action in the instance
---@param name string Action name as defined in package.json
---@return action #Action object
function instance:action(name) end

---Broadcasts a message to all other controllers in this project
---@param arr integer[] Array of integers to broadcast
function instance:broadcast(arr) end

return instance