---@meta
---@class Alarm
---@field condition_valid boolean Read only. True if the alarm condition is valid
---@field active boolean Read only. True if the alarm will call the alarm handler when the next event condition occurs
---@field single_shot boolean Read only. True if the alarm will only call the alarm handler once
---@field alarm_handler fun(alarm:Alarm) Called when the alarm condition is met
local Alarm = {}

---Creates a new alarm object
---@return Alarm
function Alarm.new() end

---Cancels the alarm. The alarm handler will not be called when the next event condition occurs
function Alarm:cancel() end

---Starts the alarm. The alarm handler will be called when the next event condition occurs
function Alarm:start() end

---Sets the alarm condition to match the specified time. If all arguments are valid, condition_valid will be set to true
---@param hour integer Hour of the day (0-23)
---@param minute integer Minute of the hour (0-59)
---@param second integer Second of the minute (0-59)
function Alarm:set_time(hour, minute, second) end

return Alarm