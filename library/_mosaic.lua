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

---Gets a list of timelines by matching playback group. If group is omitted, all timelines will be returned.
---@return Timeline[]
---@param playbackGroup? integer|string The name or number of playback group to match. 
function get_timelines(playbackGroup) end

---Gets the specified timeline by id
---@return Timeline
---@param timelineNum integer The id of the timeline
function get_timeline(timelineNum) end

---Gets a list of scenes by matching playback group. If group is omitted, all scenes will be returned.
---@return Scene[]
---@param playbackGroup? integer|string The name or number of playback group to match. 
function get_scenes(playbackGroup) end

---Gets the specified scene by id
---@return Scene
---@param sceneNum integer The id of the scene
function get_scene(sceneNum) end

---Gets the specified group by id
---@param groupNum integer The id of the group. 0 will return the 'All Fixtures' group.
---@return Group
function get_group(groupNum) end

---Gets a list of all playback groups in the current project
---@return PlaybackGroup[]
function get_playback_groups() end

---Gets the specified playback group by id
---@return PlaybackGroup
---@param playbackGroupNum number The id of the playback group
function get_playback_group(playbackGroupNum) end

---Gets an override object for the given fixture
---@param fixtureNum integer Fixture number
---@return Override
function get_fixture_override(fixtureNum) end

---Gets an override object for the given fixture group
---@param groupNum integer Group number
---@return Override
function get_group_override(groupNum) end

---Gets the current controller this script is being executed on
---@return Controller
function get_current_controller() end

---Gets all controllers for this project
---@return Controller[]
function get_controllers() end

---Returns a table of remote devices on this controller. Key is integer with value equal to the global device type constants, value is assigned device number.
---@return table<RemoteDeviceType, integer>
function get_remote_devices() end

---Returns the number of GPIO inputs this controller has
---@return integer
function get_input_count() end

---Returns the input type constant for the given input
---@param inputNum number Input id
---@return RIOInputType|nil
function get_input_type(inputNum) end

---Returns the threshold configuration for this GPIO port
---@param inputNum integer Input id
---@return InputThreshold|nil
function get_input_threshold(inputNum) end

---Returns the number of relay output ports this controller has
---@return integer
function get_output_count() end

---Returns the network primary controller in this project
---@return Controller
function get_network_primary() end

---Returns true if the controller with the given number has been discovered, or false otherwise
---@param controllerNum integer
---@return boolean
function is_controller_online(controllerNum) end

---Returns this controllers temperature object
---@return Temperature
function get_temperature() end

---Gets the specified timeline by id
---@return Variant
---@param idx integer The id of the trigger variable
function get_trigger_variable(idx) end


---Gets the specified timeline by id
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function enqueue_trigger(num, ...) end

---@param level LogLevel
---@param message string
function log(level, message) end

---@param message string
function log(message) end
