---@meta
---@class controller Only available on IO Modules.
local controller = {}

-- Namespaces
controller.system = system
controller.time = time
controller.web_server = web_server

-- Functions from _mosaic.lua
controller.get_current_project = get_current_project
controller.get_current_replication = get_current_replication
controller.get_current_location = get_current_location
controller.get_timelines = get_timelines
controller.get_timeline = get_timeline
controller.get_scenes = get_scenes
controller.get_scene = get_scene
controller.get_group = get_group
controller.get_playback_groups = get_playback_groups
controller.get_playback_group = get_playback_group
controller.get_fixture_override = get_fixture_override
controller.get_group_override = get_group_override
controller.get_current_controller = get_current_controller
controller.get_controllers = get_controllers
controller.get_remote_devices = get_remote_devices
controller.get_input_count = get_input_count
controller.get_input_type = get_input_type
controller.get_input_threshold = get_input_threshold
controller.get_output_count = get_output_count
controller.get_network_primary = get_network_primary
controller.is_controller_online = is_controller_online
controller.get_temperature = get_temperature
controller.get_rio = get_rio
controller.get_bps = get_bps
controller.get_touch_device = get_touch_device
controller.get_text_slot = get_text_slot
controller.get_dmx_universe = get_dmx_universe
controller.get_artnet_universe = get_artnet_universe
controller.get_pathport_universe = get_pathport_universe
controller.get_kinet_universe = get_kinet_universe
controller.get_edn_universe = get_edn_universe
controller.get_input = get_input
controller.get_dmx_input = get_dmx_input
controller.get_trigger_variable = get_trigger_variable
controller.get_trigger_number = get_trigger_number
controller.get_resource_path = get_resource_path
controller.get_content_target = get_content_target
controller.get_adjustment = get_adjustment
controller.get_log_level = get_log_level
controller.get_syslog_enabled = get_syslog_enabled
controller.get_syslog_ip_address = get_syslog_ip_address
controller.get_ntp_enabled = get_ntp_enabled
controller.get_ntp_ip_address = get_ntp_ip_address
controller.get_hash_string = get_hash_string
controller.get_hash_table = get_hash_table
controller.log = log
controller.reset = reset
controller.set_log_level = set_log_level
controller.pause_all = pause_all
controller.resume_all = resume_all
controller.release_all = release_all
controller.release_all_timelines = release_all_timelines
controller.release_all_scenes = release_all_scenes
controller.clear_all_overrides = clear_all_overrides
controller.enqueue_trigger = enqueue_trigger
controller.enqueue_local_trigger = enqueue_local_trigger
controller.force_trigger = force_trigger
controller.force_local_trigger = force_local_trigger
controller.set_text_slot = set_text_slot
controller.set_control_value = set_control_value
controller.set_control_state = set_control_state
controller.set_control_caption = set_control_caption
controller.set_touch_button_pressed = set_touch_button_pressed
controller.is_touch_button_pressed = is_touch_button_pressed
controller.set_interface_page = set_interface_page
controller.set_interface_enabled = set_interface_enabled
controller.set_interface_locked = set_interface_locked
controller.push_to_web = push_to_web
controller.disable_output = disable_output
controller.enable_output = enable_output
controller.set_timecode_bus_enabled = set_timecode_bus_enabled

-- Constants from HashMethod.lua
controller.HASH_MD4 = HASH_MD4
controller.HASH_MD5 = HASH_MD5
controller.HASH_SHA1 = HASH_SHA1
controller.HASH_SHA224 = HASH_SHA224
controller.HASH_SHA256 = HASH_SHA256
controller.HASH_SHA384 = HASH_SHA384
controller.HASH_SHA512 = HASH_SHA512

-- Constants from LogLevel.lua
controller.LOG_DEBUG = LOG_DEBUG
controller.LOG_TERSE = LOG_TERSE
controller.LOG_NORMAL = LOG_NORMAL
controller.LOG_EXTENDED = LOG_EXTENDED
controller.LOG_VERBOSE = LOG_VERBOSE
controller.LOG_CRITICAL = LOG_CRITICAL

-- Constants from RemoteDeviceType.lua
controller.RIO80 = RIO80
controller.RIO44 = RIO44
controller.RIO08 = RIO08
controller.BPS = BPS
controller.RIOA = RIOA
controller.RIOD = RIOD
controller.BPI = BPI
controller.EXT = EXT
controller.EDN20 = EDN20
controller.EDN10 = EDN10
controller.RIOG4 = RIOG4
controller.RIOD4 = RIOD4
controller.TPS = TPS
controller.TPS5 = TPS5
controller.TPS8 = TPS8

-- Constants from ContentTarget.lua
controller.PRIMARY = PRIMARY
controller.SECONDARY = SECONDARY
controller.TARGET_3 = TARGET_3
controller.TARGET_4 = TARGET_4
controller.TARGET_5 = TARGET_5
controller.TARGET_6 = TARGET_6
controller.TARGET_7 = TARGET_7
controller.TARGET_8 = TARGET_8

return controller