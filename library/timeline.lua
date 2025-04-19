---@meta


---@alias SourceBus
---| '"DEFAULT"'
---| '"TCODE_1"'
---| '"TCODE_2"'
---| '"TCODE_3"'
---| '"TCODE_4"'
---| '"TCODE_5"'
---| '"TCODE_6"'
---| '"AUDIO_1"'
---| '"AUDIO_2"'
---| '"AUDIO_3"'
---| '"AUDIO_4"'

---@alias AudioBand
---| '"VOLUME"'

---@alias AudioChannel
---| '"LEFT"'
---| '"RIGHT"'
---| '"COMBINED"'

---@alias TimelineState
---| '"NONE"'
---| '"RUNNING"'
---| '"PAUSED"'
---| '"HOLDING_AT_END"'
---| '"RELEASED"'

---@alias TimelinePriority
---| '"HIGH_PRIORITY"'
---| '"ABOVE_NORMAL_PRIORITY"'
---| '"NORMAL_PRIORITY"'
---| '"BELOW_NORMAL_PRIORITY"'
---| '"LOW_PRIORITY"'

---@class Timeline
---@field name string
---@field group string
---@field length integer
---@field source_bus SourceBus
---@field timecode_format string
---@field audio_band AudioBand
---@field audio_channel AudioChannel
---@field audio_peak boolean
---@field time_offset integer
---@field state TimelineState
---@field onstage boolean
---@field position integer
---@field priority TimelinePriority
---@field custom_properties table
local Timeline = {}

function Timeline.start() end

---@param fade? number
function Timeline.release(fade) end

---@param fade? number
function Timeline.toggle(fade) end

function Timeline.pause() end

function Timeline.resume() end

---@param rate number | Variant
function Timeline.set_rate(rate) end

---@param position number | Variant
function Timeline.set_position(position) end

function Timeline.set_default_source() end

---@param timecodeBus SourceBus
---@param offset integer
function Timeline.set_timecode_source(timecodeBus, offset) end

---@param audioBus SourceBus
---@param band integer
---@param channel AudioChannel
---@param peak? boolean
function Timeline.set_audio_source(audioBus, band, channel, peak) end

return Timeline