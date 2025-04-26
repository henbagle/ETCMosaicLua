---@meta
---@class Timer
---@field interval integer Timer interval in milliseconds
---@field active boolean Read only. True if the timer is running, false otherwise
---@field single_shot boolean Read/write. Determines whether the time is single shot or repeating
---@field timeout_handler fun(timer:Timer) Called when the timer interval has elapsed
local Timer = {}

---Creates a new timer object
---@return Timer
function Timer.new() end

---Starts the timer. If it is already active, it will be restarted.
function Timer:start() end

---Stops the timer
function Timer:stop() end

return Timer