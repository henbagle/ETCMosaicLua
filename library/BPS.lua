---@meta
---@class BPS
local BPS = {}

---@alias BPSState
---| '"RELEASED"'
---| '"PRESSED"'
---| '"HELD"'
---| '"REPEAT"'

---Returns the state of the button
---@param buttonNumber integer
---@return BPSState
function BPS:get_state(buttonNumber) end


---@alias BPSEffect
---| '"OFF"
---| '"ON"'
---| '"SLOW_FLASH"'
---| '"FAST_FLASH"'
---| '"DOUBLE_FLASH"'
---| '"BLINK"'
---| '"PULSE"'
---| '"SINGLE"'
---| '"RAMP_ON"'
---| '"RAMP_OFF"'

---Set the effect and intensity of a BPS button LED
---@param button integer
---@param effect BPSEffect
---@param intensity? integer
---@param fade? number
function BPS:set_led(button, effect, intensity, fade) end

return BPS