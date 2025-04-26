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

---Gets a list of timeline ids by matching playback group. If group is omitted, all timelines will be returned
---@return integer[]
---@param playbackGroup? integer|string The name or number of playback group to match
function get_timelines(playbackGroup) end

---Gets the specified timeline by id
---@return Timeline
---@param timelineNum integer The id of the timeline
function get_timeline(timelineNum) end

---Gets a list of scene ids by matching playback group. If group is omitted, all scenes will be returned
---@return integer[]
---@param playbackGroup? integer|string The name or number of playback group to match
function get_scenes(playbackGroup) end

---Gets the specified scene by id
---@return Scene
---@param sceneNum integer The id of the scene
function get_scene(sceneNum) end

---Gets the specified group by id
---@param groupNum integer The id of the group. 0 will return the 'All Fixtures' group
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

---Returns the value of the given text slot. If no slot is found, an empty string is returned
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
---@return boolean|integer #The state of the input. If the input is a digital input, a boolean will be returned. For analog, the value of the input (0-100) will be returned
function get_input(idx) end

---Returns the value of the given DMX input channel
---@param channel integer DMX channel number
---@return integer|nil #The value of the DMX input channel. If the channel is not found, nil will be returned
function get_dmx_input(channel) end

---Gets the specified timeline by id
---@param idx integer The id of the trigger variable
---@return Variant
function get_trigger_variable(idx) end

---Returns the id of the trigger that ran this script. If the script was not run by a trigger, nil will be returned
---@return integer|nil
function get_trigger_number() end

---Returns the path to a resource on the controller
---@param filename string The name of file on the controller's internal storage
---@return string #The path to the resource on the controller
function get_resource_path(filename) end

---Only supported on Atlas and Atlas Pro
---Returns a content target object from the project that matches the parameters
---@param compositionNum integer User number of the composition
---@param type? ContentTargetType Only available on Atlas Pro. The content type of the composition
---@return ContentTarget|nil #The content target object, or nil if not found
function get_content_target(compositionNum, type) end

---Only supported on Atlas Pro
---Returns an Adjustment object from the project that matches the parameters
---@param num integer User number of the adjustment
---@return Adjustment|nil #The adjustment object, or nil if not found
function get_adjustment(num) end

---Gets the current log level of the controller
---@return LogLevel
function get_log_level() end

---Return true if Syslog is enabled, false otherwise
---@return boolean
function get_syslog_enabled() end

---Returns the IP address of the syslog server
---@return string #The IP address of the syslog server
function get_syslog_ip_address() end

---Return true if NTP is enabled, false otherwise
---@return boolean
function get_ntp_enabled() end

---Returns the IP address of the syslog server
---@return string #The IP address of the NTP server
function get_ntp_ip_address() end

---Returns hashed string using the specified method
---@param string string The string to hash
---@param method HashMethod The hash method to use
---@return string #The hashed string
function get_hash_string(string, method) end

---Returns hashed byte table using the specified method
---@param table table The byte table to hash
---@param method HashMethod The hash method to use
---@return table #The hashed string
function get_hash_table(table, method) end

---Log a message to the controller's log
---@overload fun(message: string)
---@param level LogLevel
---@param message string
function log(level, message) end

---Reboots the controller
function reset() end

---Changes the log level of the controller
---@param level LogLevel The log level to set
function set_log_level(level) end

---Pause all timelines in the project
function pause_all() end

---Pause the specified timeline
function resume_all() end

---Release all scenes and timelines in the project
---@param fade? number The fade time in seconds
---@param group? integer|string The name or number of playback group to match. Prepend the group name with a '!' to match all groups except the specified group
function release_all(fade, group) end

---Release all timelines in the project
---@param fade? number The fade time in seconds
---@param group? integer|string The name or number of playback group to match. Prepend the group name with a '!' to match all groups except the specified group
function release_all_timelines(fade, group) end

---Release all scenes in the project
---@param fade? number The fade time in seconds
---@param group? integer|string The name or number of playback group to match. Prepend the group name with a '!' to match all groups except the specified group
function release_all_scenes(fade, group) end

---Removes all overrides from fixtures and groups
---@param fade? number The fade time in seconds
function clear_all_overrides(fade) end

---Cues the trigger to be fired on the next controller playback refresh. The triggers conditions will be tested
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function enqueue_trigger(num, ...) end

---Cues the trigger to be fired on the next controller playback refresh, only on the controller that ran the function. The triggers conditions will be tested
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function enqueue_local_trigger(num, ...) end

---Cues the trigger to be fired on the next controller playback refresh. The triggers conditions will not be tested
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function force_trigger(num, ...) end

---Cues the trigger to be fired on the next controller playback refresh, only on the controller that ran the function. The triggers conditions will not be tested
---@param num integer The id of the trigger
---@param ... any Variables to be passed to the trigger
function force_local_trigger(num, ...) end

---Sets the value of the given text slot
---@param name string Text slot name
---@param value string Text slot value
function set_text_slot(name, value) end

---Set the value on a Touch Slider or Colour Picker on all touch screens
---@param name string The key of the touch control
---@param value integer (0-255) New value to set
---@param emitChange? boolean Optional. Whether to fire associated truggers as a result of the value change.
function set_control_value(name, value, emitChange) end

---Set the value on a Touch Slider or Colour Picker on all touch screens
---@param name string The key of the touch control
---@param index? integer (1-3) Axis of movement. A slider has 1, a colour picker has 3.
---@param value integer (0-255) New value to set
---@param emitChange? boolean Optional. Whether to fire associated truggers as a result of the value change.
function set_control_value(name, index, value, emitChange) end

---Set the state on a Touch control on all touch screens
---@param name string The key of the touch control
---@param state string The name of the state as defined in the Touch theme
function set_control_state(name, state) end

---Set the caption on a Touch control on all touch screens
---@param name string The key of the touch control
---@param caption string The text to display as the control's caption
function set_control_caption(name, caption) end

---Sets the pressed or released state of a Touch button on all touch screens
---@param name string The key of the touch button
---@param pressed boolean Whether the button is pressed (true) or released (false)
function set_touch_button_pressed(name, pressed) end

---Returns the pressed or released state of a touch button on all touch screens
---@param name string The key of the touch button
---@return boolean Whether the button is pressed (true) or released (false)
function is_touch_button_pressed(name) end

---Changes the current page on all touch screens
---@param number integer Touch interface page to change to
---@param transition? InterfacePageTransition Optional page transition
function set_interface_page(number, transition) end

---Enable/disable all touch screens
---@param enabled? boolean Whether to enable the touch screen. Defaults to true.
function set_interface_enabled(enabled) end

---Lock/unlock all touch screens
---@param lock? boolean Whether to lock the touch screen. Defaults to true.
function set_interface_locked(lock) end

---Sends data as JSON to the web interface in the format {"name": "value"}
---@param name string Property name to send
---@param value Variant Value to send
function push_to_web(name, value) end

---Disables the output of a single protocol from the controller
---@param protocol Protocol
function disable_output(protocol) end

---Enables the output of a single protocol from the controller
---@param protocol Protocol
function enable_output(protocol) end

---Enable or disable a specified timecode bus
---@param bus SourceBus The bus to enable or disable
---@param enabled? boolean Whether to enable the bus. Defaults to true.
function set_timecode_bus_enabled(bus, enabled) end

return _G