---@meta
---@class Controller
---@field number integer Controller number
---@field name string Controller name
---@field vlan_tag string VLAN tag number as a string. "None" if there is no tag set
---@field is_network_primary boolean Whether this controller is set as the Network Primary in the project
---@field online boolean Whether this controller is currently online
local Controller = {}

return Controller