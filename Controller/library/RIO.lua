---@meta
---@class RIO
local RIO = {
    ANALOG = 0,
    DIGITAL = 1,
    CONTACT_CLOSURE = 2,
}

---@alias RIOInputType
---| 0 ANALOG
---| 1 DIGITAL
---| 2 CONTACT_CLOSURE

---Returns the state of the input as a boolean if the input is set to Digital/Contact closure, or an integer if the input is Analog.
---@param inputNum integer
---@return boolean|integer
function RIO:get_input(inputNum) end

---Returns the number of input ports this RIO has
---@return integer
function RIO:get_input_count() end

---Returns the input type or nil if the input num does not correspond to a port.
---@param inputNum integer
---@return RIOInputType|nil
function RIO:get_input_type(inputNum) end

---Returns an InputThreshold object for the input ports
---@param inputNum integer
---@return InputThreshold|nil
function RIO:get_input_threshold(inputNum) end

---Returns the number of output ports this RIO has
---@return integer
function RIO:get_output_count() end

---Returns the state of the output
---@param outputNum integer
---@return boolean|nil
function RIO:get_output(outputNum) end

---comment
---@param outputNum integer
---@param state boolean|integer
function RIO:set_output(outputNum, state) end

return RIO