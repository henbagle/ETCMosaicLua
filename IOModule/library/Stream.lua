---@meta
---@class Stream
---@field is_open boolean True if the stream is open, false otherwise
---@field open_mode StreamOpenMode The mode in which the stream is opened
---@field bytes_available integer The number of bytes available to read from the stream
---@field bytes_to_write integer The number of bytes waiting to be written to the stream
---@field at_end boolean True if the stream is at the end of the device, false otherwise
---@field pos integer The current position in the stream. For sequential devices or closed devices, pos will be 0
---@field readable boolean True if the stream is open for reading, false otherwise
---@field writeable boolean True if the stream is open for writing, false otherwise
---@field sequential boolean True if the stream is sequential, false otherwise
---@field can_read_line boolean True if a complete line of data can be read from the stream, false otherwise
---@field error_string string Read only. A human-readable description of the last error that occurred
---@field ready_read_handler fun(stream:Stream) Called when new data is available to read
---@field bytes_written_handler fun(stream:Stream, bytes:integer) Called every time data is written to the underlying device
---@field about_to_close_handler fun(stream:Stream) Called when any of the underlying resources are about to be closed
local Stream = {}

---Returns data up to max length as a string, or all data available if max is not given
---@param max integer|nil Maximum number of bytes to read
---@return string data Data read from the stream
function Stream:read_string(max) end

---Asynchronously reads data up to max length as a string, or all data available if max is not given
---This must be used when outside the Stream's event handlers
---@param max integer|nil Maximum number of bytes to read
---@param callback fun(stream:Stream, data:string, error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:read_string_async(max, callback) end

---Returns data up to max bytes as a numerically-indexed table of bytes, or all data available if max is not given
---@param max integer|nil Maximum number of bytes to read
---@return integer[] data Numerically-indexed table of bytes
function Stream:read_bytes(max) end

---Asynchronously reads data up to max bytes as a numerically-indexed table of bytes, or all data available if max is not given
---This must be used when outside the Stream's event handlers
---@param max integer|nil Maximum number of bytes to read
---@param callback fun(stream:Stream, data:integer[], error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:read_bytes_async(max, callback) end

---Reads a line from the stream as a string, but not more than max characters
---@param max integer|nil Maximum number of characters to read
---@return string data Line read from the stream
function Stream:read_line_string(max) end

---Asynchronously reads a line from the stream as a string, but not more than max characters
---This must be used when outside the Stream's event handlers
---@param max integer|nil Maximum number of characters to read
---@param callback fun(stream:Stream, data:string, error:any|nil) Called when a line is read. If an internal error occurs then error will be non-nil.
function Stream:read_line_string_async(max, callback) end

---Reads a line from the stream as a numerically-indexed table of bytes, but not more than max characters
---@param max integer|nil Maximum number of characters to read
---@return integer[] data Numerically-indexed table of bytes
function Stream:read_line_bytes(max) end

---Asynchronously reads a line from the stream as a numerically-indexed table of bytes, but not more than max characters
---This must be used when outside the Stream's event handlers
---@param max integer|nil Maximum number of characters to read
---@param callback fun(stream:Stream, data:integer[], error:any|nil) Called when a line is read. If an internal error occurs then error will be non-nil.
function Stream:read_line_bytes_async(max, callback) end

---Reads all data available as a string
---@return string data Data read from the stream
function Stream:read_all_string() end

---Asynchronously reads all data available as a string
---This must be used when outside the Stream's event handlers
---@param callback fun(stream:Stream, data:string, error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:read_all_string_async(callback) end

---Reads all data available as a numerically-indexed table of bytes
---@return integer[] data Numerically-indexed table of bytes
function Stream:read_all_bytes() end

---Asynchronously reads all data available as a numerically-indexed table of bytes
---This must be used when outside the Stream's event handlers
---@param callback fun(stream:Stream, data:integer[], error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:read_all_bytes_async(callback) end

---Writes a string to the underlying device
---@param data string String to write
---@return integer bytes Number of bytes written
function Stream:write_string(data) end

---Asynchronously writes a string to the underlying device
---This must be used when outside the Stream's event handlers
---@param data string String to write
---@param callback fun(stream:Stream, bytes_written:integer, error:any|nil) Called when data is written. If an internal error occurs then error will be non-nil.
function Stream:write_string_async(data, callback) end

---Writes values in the table to the underlying device as bytes
---@param data integer[] Array of bytes to write
---@return integer bytes Number of bytes written
function Stream:write_bytes(data) end

---Asynchronously writes values in the table to the underlying device as bytes
---This must be used when outside the Stream's event handlers
---@param data integer[] Array of bytes to write
---@param callback fun(stream:Stream, bytes_written:integer, error:any|nil) Called when data is written. If an internal error occurs then error will be non-nil.
function Stream:write_bytes_async(data, callback) end

---Reads at most max bytes from the stream as a string without side effects
---@param max integer Maximum number of bytes to read
---@return string data Data read from the stream
function Stream:peek_string(max) end

---Asynchronously reads at most max bytes from the stream as a string without side effects
---This must be used when outside the Stream's event handlers
---@param max integer Maximum number of bytes to read
---@param callback fun(stream:Stream, data:string, error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:peek_string_async(max, callback) end

---Reads at most max bytes from the stream as a numerically-indexed table of bytes without side effects
---@param max integer Maximum number of bytes to read
---@return integer[] data Numerically-indexed table of bytes
function Stream:peek_bytes(max) end

---Asynchronously reads at most max bytes from the stream as a numerically-indexed table of bytes without side effects
---This must be used when outside the Stream's event handlers
---@param max integer Maximum number of bytes to read
---@param callback fun(stream:Stream, data:integer[], error:any|nil) Called when data is read. If an internal error occurs then error will be non-nil.
function Stream:peek_bytes_async(max, callback) end

---For random-access streams, sets the current position. For sequential devices, false will be returned
---@param pos integer Position to seek to
---@return boolean True if the operation was successful, false otherwise
function Stream:seek(pos) end

---Asynchronously sets the current position
---This must be used when outside the Stream's event handlers
---@param pos integer Position to seek to
---@param callback fun(stream:Stream, result:boolean, error:any|nil) Called when the operation is complete. If an internal error occurs then error will be non-nil.
function Stream:seek_async(pos, callback) end

---For random-access streams, sets the current position to the start of the input. For sequential devices, false will be returned
---@return boolean True if the operation was successful, false otherwise
function Stream:reset() end

---Asynchronously sets the current position to the start of the input
---This must be used when outside the Stream's event handlers
---@param callback fun(stream:Stream, result:boolean, error:any|nil) Called when the operation is complete. If an internal error occurs then error will be non-nil.
function Stream:reset_async(callback) end

---Opens the stream under the given mode
---@param mode StreamOpenMode Mode in which to open the stream
---@return boolean True if the stream could be opened under the given mode, false otherwise
function Stream:open(mode) end

---Asynchronously opens the stream under the given mode
---This must be used when outside the Stream's event handlers
---@param mode StreamOpenMode Mode in which to open the stream
---@param callback fun(stream:Stream, result:boolean, error:any|nil) Called when the operation is complete. If an internal error occurs then error will be non-nil.
function Stream:open_async(mode, callback) end

---Closes the stream for reading and writing
function Stream:close() end

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
