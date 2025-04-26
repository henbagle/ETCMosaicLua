---@meta
---@class UdpSocket
---@field error UdpSocketError Read only. The type of error that occured
---@field error_string string Read only. A human-readable description of the error
---@field state UdpSocketState Read only. The current state of the socket
---@field local_address string Read only. The host addres of the local socket, otherwise empty string
---@field local_port integer Read only. The port of the local socket, otherwise 0
---@field bytes_written_handler fun(socket:UdpSocket, bytes:integer) Called every time data is written to the network
---@field error_handler fun(socket:UdpSocket, error:UdpSocketError) Called when an error occurs. The error parameter contains the error code
---@field ready_read_handler fun(socket:UdpSocket) Called when the socket is ready to read data. Called only once after each call to a read datagram function
---@field state_changed_handler fun(socket:UdpSocket, state:UdpSocketState) Called when the socket state changes. The state parameter contains the new state of the socket
local UdpSocket = {}

---Creates a new UDP socket object
---@return UdpSocket
function UdpSocket.new() end

---Bind the socket to a port
---@param port integer Port. If port is zero, a random port will be chosen
---@return boolean On success, the function returns true and enters BOUND_STATE
function UdpSocket:bind(port) end

---Asynchronously bind the socket to a port
---@param port integer Port. If port is zero, a random port will be chosen
---@param callback fun(socket:UdpSocket, result:boolean, error:UdpSocketError|nil) Called when the bind operation is complete. The result parameter indicates whether the bind was successful or not. The error parameter contains the error code if the bind failed, otherwise nil.
function UdpSocket:bind_async(port, callback) end

---Closes the socket. On closing, the socket enters UNBOUND_STATE
function UdpSocket:close() end

---Only valid inside the UdpSocket's event handlers. Reads the datagram
---@return DatagramBytes
function UdpSocket:read_datagram_bytes() end

---Asynchronously reads the datagram. The callback is called when the datagram is received or an error occurs
---This must be used when outside the UdpSocket's event handlers
---@param callback fun(socket:UdpSocket, result:DatagramBytes) Called when the datagram is received
function UdpSocket:read_datagram_bytes_async(callback) end

---Only valid inside the UdpSocket's event handlers. Reads the datagram as a string
---@return DatagramString
function UdpSocket:read_datagram_string() end

---Asynchronously reads the datagram. The callback is called when the datagram is received or an error occurs
---This must be used when outside the UdpSocket's event handlers
---@param callback fun(socket:UdpSocket, result:DatagramString) Called when the datagram is received
function UdpSocket:read_datagram_string_async(callback) end

---Sends a datagram to the specified address and port. The socket must be in BOUND_STATE
---@param data integer[] Array of bytes to send
---@param hostname string Hostname or IP address of the destination
---@param port integer Port of the destination
---@return integer bytes Number of bytes written, or -1 if the operation failed
function UdpSocket:write_datagram_bytes(data, hostname, port) end

---Asynchronously sends a datagram to the specified address and port. The socket must be in BOUND_STATE
---This must be used when outside the UdpSocket's event handlers
---@param data integer[] Array of bytes to send
---@param hostname string Hostname or IP address of the destination
---@param port integer Port of the destination
---@param callback fun(socket:UdpSocket, result:integer, error:UdpSocketError|nil) Called when the datagram is sent. Result is the number of bytes written, or -1 if the operation failed. The error parameter contains the error code if the operation failed, otherwise nil
function UdpSocket:write_datagram_bytes_async(data, hostname, port, callback) end

---Sends a datagram to the specified address and port. The socket must be in BOUND_STATE
---@param data string String to send
---@param hostname string Hostname or IP address of the destination
---@param port integer Port of the destination
---@return integer bytes Number of bytes written, or -1 if the operation failed
function UdpSocket:write_datagram_string(data, hostname, port) end

---Asynchronously sends a datagram to the specified address and port. The socket must be in BOUND_STATE
---This must be used when outside the UdpSocket's event handlers
---@param data string String to send
---@param hostname string Hostname or IP address of the destination
---@param port integer Port of the destination
---@param callback fun(socket:UdpSocket, result:integer, error:UdpSocketError|nil) Called when the datagram is sent. Result is the number of bytes written, or -1 if the operation failed. The error parameter contains the error code if the operation failed, otherwise nil
function UdpSocket:write_datagram_string_async(data, hostname, port, callback) end

---Joins the specified multicast group. The operation will fail if the socket is not in BOUND_STATE
---@param group_address string Multicast group IP address in the form of a string
---@return boolean True if the operation was successful, false otherwise
function UdpSocket:join_multicast_group(group_address) end

---Asynchronously joins the specified multicast group. The operation will fail if the socket is not in BOUND_STATE
---This must be used when outside the UdpSocket's event handlers
---@param group_address string Multicast group IP address in the form of a string
---@param callback fun(socket:UdpSocket, result:boolean, error:UdpSocketError|nil) Called when the operation is complete. The result parameter indicates whether the join was successful or not. The error parameter contains the error code if the join failed, otherwise nil
function UdpSocket:join_multicast_group_async(group_address, callback) end

---Leaves the specified multicast group. The operation will fail if the socket is not in BOUND_STATE
---@param group_address string Multicast group IP address in the form of a string
---@return boolean True if the operation was successful, false otherwise
function UdpSocket:join_multicast_group(group_address) end

---Asynchronously leaves the specified multicast group. The operation will fail if the socket is not in BOUND_STATE
---This must be used when outside the UdpSocket's event handlers
---@param group_address string Multicast group IP address in the form of a string
---@param callback fun(socket:UdpSocket, result:boolean, error:UdpSocketError|nil) Called when the operation is complete. The result parameter indicates whether the leave was successful or not. The error parameter contains the error code if the leave failed, otherwise nil
function UdpSocket:leave_multicast_group_async(group_address, callback) end


UdpSocket.SOCKET_RESOURCE_ERROR = 4
UdpSocket.SOCKET_TIMEOUT_ERROR = 5
UdpSocket.DATAGRAM_TOO_LARGE_ERROR = 6
UdpSocket.NETWORK_ERROR = 7
UdpSocket.UNSUPPORTED_SOCKET_OPERATION_ERROR = 10
UdpSocket.UNFINISHED_SOCKET_OPERATION_ERROR = 11
UdpSocket.OPERATION_ERROR = 19
UdpSocket.UNKNOWN_ERROR = -1

---@alias UdpSocketError
---| 4 SOCKET_RESOURCE_ERROR
---| 5 SOCKET_TIMEOUT_ERROR
---| 6 DATAGRAM_TOO_LARGE_ERROR
---| 7 NETWORK_ERROR
---| 10 UNSUPPORTED_SOCKET_OPERATION_ERROR
---| 11 UNFINISHED_SOCKET_OPERATION_ERROR
---| 19 OPERATION_ERROR
---| -1 UNKNOWN_ERROR

UdpSocket.UNBOUND_STATE = 0
UdpSocket.BOUND_STATE = 4

---@alias UdpSocketState
---| 0 UNBOUND_STATE
---| 4 BOUND_STATE

---@class DatagramBytes
---@field data number[] Numerically-indexed table of bytes
---@field sender_address string Sender IP address
---@field sender_port integer Sender port
---@field valid boolean False if the operation failed, true otherwise
local DatagramBytes = {}

---@class DatagramString
---@field data string Data received represented as a string
---@field sender_address string Sender IP address
---@field sender_port integer Sender port
---@field valid boolean False if the operation failed, true otherwise
local DatagramBytes = {}

return UdpSocket