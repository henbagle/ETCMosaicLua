---@meta
---@class Stopwatch
---@field elapsed integer Elapsed time in milliseconds
---@field active boolean True if the stopwatch is running, false otherwise
local Stopwatch = {}

---Creates a new stopwatch object
---@return Stopwatch
function Stopwatch.new() end

---Starts or resumes the stopwatch
function Stopwatch:start() end

---Stops the stopwatch, holding the current time
function Stopwatch:stop() end

---Resets the stopwatch to zero. If the stopwatch is active, it will continue running from zero
function Stopwatch:reset() end