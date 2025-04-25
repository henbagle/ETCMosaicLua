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

---Gets a list of timeline ids by matching playback group. If group is omitted, all timelines will be returned.
---@return integer[]
---@param playbackGroup? integer|string The name or number of playback group to match. 
function get_timelines(playbackGroup) end

---Gets the specified timeline by id
---@return Timeline
---@param timelineNum integer The id of the timeline
function get_timeline(timelineNum) end

---Gets a list of scene ids by matching playback group. If group is omitted, all scenes will be returned.
---@return integer[]
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

---Returns a table of remote devices on this controller. Key is integer with value equal to the global device type constants, value is table of integers representing the device numbers
---@return table<RemoteDeviceType, table<integer, integer>>
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

---Returns a RIO object for the given remote device number
---@param type RIOType The type of RIO to get
---@param num integer Remote device number
---@return RIO|nil
function get_rio(type, num) end

---Returns a BPS object for the given remote device number
---@param num integer Remote device number
---@return BPS|nil
function get_bps(num) end

---Returns a TPS object for the given remote device number
---@param type TPSType The type of touch device to get
---@param num integer Remote device number
function get_touch_device(type, num) end

---Returns the value of the given text slot. If no slot is found, an empty string is returned.
---@param slotName string Text slot name
---@return string
function get_text_slot(slotName) end

---Returns a Universe object for the given DMX universe number
---@param idx integer DMX universe number
---@return Universe|nil
function get_dmx_universe(idx) end

---Returns a Universe object for the given Art-Net universe number
---@param idx integer Art-Net universe number
---@return Universe|nil
function get_artnet_universe(idx) end

---Returns a Universe object for the given Pathport universe number
---@param idx integer Pathport universe number
---@return Universe|nil
function get_pathport_universe(idx) end

---Returns a Universe object for the KiNET power supply matching the parameters
---@param power_supply_num integer KiNET power supply in the project
---@param port_num integer Port number of the power supply
---@return Universe|nil
function get_kinet_universe(power_supply_num, port_num) end

---Returns a Universe object for the EDN object matching the parameters
---@param remote_device_type EDNType The type of EDN device to get
---@param remote_device_num integer The remote device number
---@param port_num integer The port number of the EDN device
---@return Universe|nil
function get_edn_universe(remote_device_type, remote_device_num, port_num) end

---Returns the state of the controller's input
---@param idx integer
---@return boolean|integer #The state of the input. If the input is a digital input, a boolean will be returned. For analog, the value of the input (0-100) will be returned.
function get_input(idx) end

---Returns the value of the given DMX input channel
---@param channel integer DMX channel number
---@return integer|nil #The value of the DMX input channel. If the channel is not found, nil will be returned.
function get_dmx_input(channel) end

---Gets the specified timeline by id
---@param idx integer The id of the trigger variable
---@return Variant
function get_trigger_variable(idx) end

---Returns the id of the trigger that ran this script. If the script was not run by a trigger, nil will be returned.
---@return integer|nil
function get_trigger_number() end

---Returns the path to a resource on the controller
---@param filename string The name of file on the controller's internal storage
---@return string #The path to the resource on the controller
function get_resource_path(filename) end

---Only supported on Atlas and Atlas Pro.
---Returns a content target object from the project that matches the parameters.
---@param compositionNum integer User number of the composition
---@param type? ContentTargetType Only available on Atlas Pro. The content type of the composition.
---@return ContentTarget|nil #The content target object, or nil if not found.
function get_content_target(compositionNum, type) end

---Gets the specified timeline by id
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function enqueue_trigger(num, ...) end

---@param level LogLevel
---@param message string
function log(level, message) end

---@param message string
function log(message) end
