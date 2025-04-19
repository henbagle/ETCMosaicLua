---@meta

---Get the current project
---@return Project
function get_current_project() end

---Gets the current replication object
---@return Replication
function get_current_replication() end

---Gets the current location
---@return Location
function get_current_location() end

---Gets the specified timeline by id
---@return Timeline
---@param id integer The id of the timeline
function get_timeline(id) end


---Gets the specified timeline by id
---@return Variant
---@param idx integer The id of the trigger variable
function get_trigger_variable(idx) end


---Gets the specified timeline by id
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function enqueue_trigger(num, ...) end


---@alias LogLevel
---| '"LOG_DEBUG"'
---| '"LOG_TERSE"'
---| '"LOG_NORMAL"'
---| '"LOG_EXTENDED"'
---| '"LOG_VERBOSE"'
---| '"LOG_CRITICAL"'

---@param level LogLevel
---@param message string
function log(level, message) end

---@param message string
function log(message) end
