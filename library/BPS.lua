---@meta
---@class BPS
local BPS = {
    -- State
    RELEASED = 0,
    PRESSED = 1,
    HELD = 2,
    REPEAT = 3,

    -- Effect
    OFF = 0,
    ON = 1,
    SLOW_FLASH = 2,
    FAST_FLASH = 3,
    DOUBLE_FLASH = 4,
    BLINK = 5,
    PULSE = 6,
    SINGLE = 7,
    RAMP_ON = 8,
    RAMP_OFF = 9,
}

---@alias BPSState
---| 0 RELEASED
---| 1 PRESSED
---| 2 HELD
---| 3 REPEAT

---@alias BPSEffect
---| 0 OFF
---| 1 ON
---| 2 SLOW_FLASH
---| 3 FAST_FLASH
---| 4 DOUBLE_FLASH
---| 5 BLINK
---| 6 PULSE
---| 7 SINGLE
---| 8 RAMP_ON
---| 9 RAMP_OFF

---Returns the state of the button
---@param buttonNumber integer
---@return BPSState
function BPS:get_state(buttonNumber) end

---Set the effect and intensity of a BPS button LED
---@param button integer
---@param effect BPSEffect
---@param intensity? integer
---@param fade? number
function BPS:set_led(button, effect, intensity, fade) end

return BPS