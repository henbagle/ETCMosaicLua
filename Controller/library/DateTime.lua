---@meta
---@class DateTime
---@field year integer Year
---@field month integer Month (1-12)
---@field monthday integer Day of the month (1-31)
---@field time_string string Time in the format "HH:MM:SS"
---@field date_string string Date in the format "DD Mmm YYYY"
---@field weekday integer Day of the week (0-6, 0 = Sunday)
---@field hour integer Hour (0-23)
---@field minute integer Minute (0-59)
---@field second integer Second (0-59)
---@field utc_timestamp integer UTC timestamp
local DateTime = {}

---Create a new DateTime from the number of seconds since 1970/01/01 00:00 UTC,
---@param epoch integer
---@return DateTime
function DateTime.new(epoch) end

---Create a new DateTime from a year, month, and monthday
---@param year integer
---@param month integer
---@param monthDay integer
---@return DateTime
function DateTime.new(year, month, monthDay) end

---Create a new DateTime from a year, month, monthday, hour, minute, and second
---@param year integer
---@param month integer
---@param monthDay integer
---@param hour integer
---@param minute integer
---@param second? integer
function DateTime.new(year, month, monthDay, hour, minute, second) end

return DateTime