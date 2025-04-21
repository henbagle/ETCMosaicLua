---@meta
---@class TouchDevice
local TouchDevice = {}

---Set the value on a Touch Slider or Colour Picker
---@param name string The key of the touch control
---@param value integer (0-255) New value to set
---@param emitChange? boolean Optional. Whether to fire associated truggers as a result of the value change.
function TouchDevice:set_control_value(name, value, emitChange) end

---Set the value on a Touch Slider or Colour Picker
---@param name string The key of the touch control
---@param index? integer (1-3) Axis of movement. A slider has 1, a colour picker has 3.
---@param value integer (0-255) New value to set
---@param emitChange? boolean Optional. Whether to fire associated truggers as a result of the value change.
function TouchDevice:set_control_value(name, index, value, emitChange) end

---Set the state on a Touch control.
---@param name string The key of the touch control
---@param state string The name of the state as defined in the Touch theme
function TouchDevice:set_control_state(name, state) end

---Set the caption on a Touch control
---@param name string The key of the touch control
---@param caption string The text to display as the control's caption
function TouchDevice:set_control_caption(name, caption) end

---Sets the pressed or released state of a Touch button
---@param name string The key of the touch button
---@param pressed boolean Whether the button is pressed (true) or released (false)
function TouchDevice:set_touch_button_pressed(name, pressed) end

---Returns the pressed or released state of a touch button
---@param name string The key of the touch button
---@return boolean Whether the button is pressed (true) or released (false)
function TouchDevice:is_touch_button_pressed(name) end

---@enum InterfacePageTransition
local InterfacePageTransition = {
    SNAP = 0,
    PAN_LEFT = 1,
    PAN_RIGHT = 2
}

---Changes the current page
---@param number integer Touch interface page to change to
---@param transition? InterfacePageTransition Optional page transition
function TouchDevice:set_interface_page(number, transition) end

---Enable/disable the touch screen
---@param enabled? boolean Whether to enable the touch screen. Defaults to true.
function TouchDevice:set_interface_enabled(enabled) end

---Lock/unlock the touch screen
---@param lock? boolean Whether to lock the touch screen. Defaults to true.
function TouchDevice:set_interface_locked(lock) end

return TouchDevice