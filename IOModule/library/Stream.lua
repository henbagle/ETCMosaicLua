---@meta
---@class Stream
---@field is_open boolean True if the stream is open, false otherwise
---@field open_mode StreamOpenMode The mode in which the stream is opened
---@field bytes_available integer The number of bytes available to read from the stream
---@field bytes_to_write integer The number of bytes waiting to be written to the stream
---@field at_end boolean True if the stream is at the end of the device, false otherwise
---@field pos integer The current position in the stream. For sequential devices or closed devices, pos will be 0
---@field readable boolean True if the stream is open for reading, false otherwise
---@field writable boolean True if the stream is open for writing, false otherwise
---@field sequential boolean True if the stream is sequential, false otherwise
---@field can_read_line boolean True if a complete line of data can be read from the stream, false otherwise
---@field error_string string A human readable description of the last error that occured
local Stream = {}

Stream.NOT_OPEN_MODE = 0x00
Stream.READ_ONLY_MODE = 0x01
Stream.WRITE_ONLY_MODE = 0x02
Stream.READ_WRITE_MODE = 0x03
Stream.APPEND_MODE = 0x04
Stream.TRUNCATE_MODE = 0x08

---@alias StreamOpenMode
---|0x00 NOT_OPEN_MODE
---|0x01 READ_ONLY_MODE
---|0x02 WRITE_ONLY_MODE
---|0x03 READ_WRITE_MODE
---|0x04 APPEND_MODE
---|0x08 TRUNCATE_MODE

return Stream