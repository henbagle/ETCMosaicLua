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

---Returns the state of the button
---@param buttonNumber integer
---@return integer
function BPS:get_state(buttonNumber) end

---Set the effect and intensity of a BPS button LED
---@param button integer
---@param effect integer
---@param intensity? integer
---@param fade? number
function BPS:set_led(button, effect, intensity, fade) end

return BPS