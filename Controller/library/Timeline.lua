---@meta
---@class Timeline
---@field name string Timeline name
---@field group string Timeline group name
---@field length integer Timeline length, in milliseconds
---@field source_bus SourceBus
---@field timecode_format string Incoming timecode format on source bus
---@field audio_band AudioBand
---@field audio_channel AudioChannel
---@field audio_peak boolean The Peak setting of the timeline, if set to an audio time source
---@field time_offset integer Time offset in milliseconds
---@field state TimelineState Timeline state
---@field onstage boolean Whether the timeline is affecting output of any fixtures
---@field position integer Position in milliseconds
---@field priority TimelinePriority
---@field custom_properties table Table keys and values correspond to custom property names and values
local Timeline = {
    -- SourceBus
    DEFAULT = 0,
    TCODE_1 = 1,
    TCODE_2 = 2,
    TCODE_3 = 3,
    TCODE_4 = 4,
    TCODE_5 = 5,
    TCODE_6 = 6,
    AUDIO_1 = 7,
    AUDIO_2 = 8,
    AUDIO_3 = 9,
    AUDIO_4 = 10,

    -- AudioBand
    VOLUME = 0,

    -- AudioChannel
    LEFT = 0,
    RIGHT = 1,
    COMBINED = 2,

    -- TimelineState
    NONE = 0, -- The timeline has never been run
    RUNNING = 1, -- The timeline is running
    PAUSED = 2, -- The timeline has been paused by another action
    HOLDING_AT_END = 3, -- The timeline has reached the end, and is holding
    RELEASED = 4, -- The timeline has been run and has now been released

    -- TimelinePriority
    HIGH_PRIORITY = 0,
    ABOVE_NORMAL_PRIORITY = 1,
    NORMAL_PRIORITY = 2,
    BELOW_NORMAL_PRIORITY = 3,
    LOW_PRIORITY = 4,

    -- TimelineReference
    RELATIVE = 0, -- The timeline position value is relative
    ABSOLUTE = 1, -- The timeline position value is absolute
    FLAG = 2, -- The timeline position value is obtained from a timeline flag
}

---@alias SourceBus
---| 0 DEFAULT
---| 1 TCODE_1
---| 2 TCODE_2
---| 3 TCODE_3
---| 4 TCODE_4
---| 5 TCODE_5
---| 6 TCODE_6
---| 7 AUDIO_1
---| 8 AUDIO_2
---| 9 AUDIO_3
---| 10 AUDIO_4

---@alias AudioBand
---| 0 VOLUME

---@alias AudioChannel
---| 0 LEFT
---| 1 RIGHT
---| 2 COMBINED

---@alias TimelineState
---| 0 NONE
---| 1 RUNNING
---| 2 PAUSED
---| 3 HOLDING_AT_END
---| 4 RELEASED

---@alias TimelinePriority
---| 0 HIGH_PRIORITY
---| 1 ABOVE_NORMAL_PRIORITY
---| 2 NORMAL_PRIORITY
---| 3 BELOW_NORMAL_PRIORITY
---| 4 LOW_PRIORITY

---@alias TimelineReference
---| 0 RELATIVE
---| 1 ABSOLUTE
---| 2 FLAG

---Starts the timeline
function Timeline:start() end

---Starts the timeline and releases others
---@param group? string|integer Optional timeline group name/number to release. Prepend the name with '!' to apply the action to all timelines except those in the group. Omit to release all timelines.
---@param fade? number Optional fade time to use when releasing other timelines, in seconds.
---@param same_group? boolean Optional flag to target the same group as the selected timeline. This flag has no effect when group is set.
function Timeline:start_release_others(group, fade, same_group) end

---Releases the timeline
---@param fade? number Optional fade time in seconds
function Timeline:release(fade) end

---Toggles the playback of the timeoine
---@param fade? number Optional release fade time in seconds
function Timeline:toggle(fade) end

---Pauses the timeline
function Timeline:pause() end

---Resumes the timeline
function Timeline:resume() end

---Sets the rate of playback of the timeline
---@param rate number | Variant
function Timeline:set_rate(rate) end

---Legacy. Same as set_position(TimelineReference.RELATIVE, position)
---@param position number | Variant
function Timeline:set_position(position) end

---Sets the position of the timeline based on the reference
---@param reference TimelineReference The reference to use for the position
---@param position number | Variant | string The position to set, in milliseconds. If the reference is FLAG, the name of the target timeline flag to match.
function Timeline:set_position(reference, position) end

---Sets the time source for the timeline to the default
function Timeline:set_default_source() end

---Sets the timecode source to the given source bus
---@param timecodeBus SourceBus Bus for the timecode source
---@param offset integer Optional offset to apply to the timecode, in milliseconds
function Timeline:set_timecode_source(timecodeBus, offset) end

---Sets an audio band as the time source for the timeline
---@param audioBus SourceBus Bus
---@param band integer The audio band to sample (Number of bands depends on audio source configuration)
---@param channel AudioChannel
---@param peak? boolean Optitonal. Whether to use the peak levels from the audio band as the time source input
function Timeline:set_audio_source(audioBus, band, channel, peak) end

return Timeline