---@meta
---@class TcpSocket : Stream
---@field error TcpSocketError Read only. The type of error that occurred
---@field state TcpSocketState Read only. The current state of the socket
---@field valid boolean Read only. True if the socket is valid and ready for use
---@field local_address string Read only. The host address of the local socket, otherwise empty string
---@field local_port integer Read only. The port of the local socket, otherwise 0
---@field remote_address string Read only. The address of the remote client if connected, otherwise empty string
---@field remote_port integer Read only. The port of the remote client if connected, otherwise 0
---@field bytes_written_handler fun(socket:TcpSocket, bytes:integer) Called every time data is written to the network
---@field connected_handler fun(socket:TcpSocket) Called when a connection has been successfully established
---@field disconnected_handler fun(socket:TcpSocket) Called when the socket has been disconnected
---@field error_handler fun(socket:TcpSocket, error:TcpSocketError) Called when an error occurs. The error parameter contains the error code
---@field host_found_handler fun(socket:TcpSocket) Called after connect() has been called and the host lookup has succeeded
---@field ready_read_handler fun(socket:TcpSocket) Called every time a new chunk of data has arrived
---@field state_changed_handler fun(socket:TcpSocket, state:TcpSocketState) Called when the socket state changes. The state parameter contains the new state of the socket
local TcpSocket = {}

---Creates a new TCP socket object
---@return TcpSocket
function TcpSocket.new() end

---Attempts to make a connection to hostname on the given port
---@param hostname string Hostname or IP address of the destination
---@param port integer Port of the destination
---@param openmode StreamOpenMode The mode in which the socket is opened
function TcpSocket:connect(hostname, port, openmode) end

---Attempts to close the socket. If there is pending data waiting to be written, the socket enters CLOSING_STATE until all data has been written
function TcpSocket:disconnect() end

---Aborts the current connection and resets the socket, discarding any pending data in the write buffer
function TcpSocket:abort() end

---Bind the socket to a port for an outgoing connection
---@param port integer Port. If port is zero, a random port will be chosen
---@return boolean On success, the function returns true and enters BOUND_STATE
function TcpSocket:bind(port) end

---Asynchronously bind the socket to a port for an outgoing connection
---@param port integer Port. If port is zero, a random port will be chosen
---@param callback fun(socket:TcpSocket, result:boolean, error:TcpSocketError|nil) Called when the bind operation is complete. The result parameter indicates whether the bind was successful or not. The error parameter contains the error code if the bind failed, otherwise nil.
function TcpSocket:bind_async(port, callback) end


TcpSocket.CONNECTION_REFUSED_ERROR = 0
TcpSocket.REMOTE_HOST_CLOSED_ERROR = 1
TcpSocket.HOST_NOT_FOUND_ERROR = 2
TcpSocket.SOCKET_RESOURCE_ERROR = 4
TcpSocket.SOCKET_TIMEOUT_ERROR = 5
TcpSocket.DATAGRAM_TOO_LARGE_ERROR = 6
TcpSocket.NETWORK_ERROR = 7
TcpSocket.UNSUPPORTED_SOCKET_OPERATION_ERROR = 10
TcpSocket.UNFINISHED_SOCKET_OPERATION_ERROR = 11
TcpSocket.SSL_HANDSHAKE_FAILED_ERROR = 13
TcpSocket.OPERATION_ERROR = 19
TcpSocket.SSL_INTERNAL_ERROR = 20
TcpSocket.SSL_INVALID_USERDATA_ERROR = 21
TcpSocket.TEMPORARY_ERROR = 22
TcpSocket.UNKNOWN_ERROR = -1

---@alias TcpSocketError
---| 0 CONNECTION_REFUSED_ERROR
---| 1 REMOTE_HOST_CLOSED_ERROR
---| 2 HOST_NOT_FOUND_ERROR
---| 4 SOCKET_RESOURCE_ERROR
---| 5 SOCKET_TIMEOUT_ERROR
---| 6 DATAGRAM_TOO_LARGE_ERROR
---| 7 NETWORK_ERROR
---| 10 UNSUPPORTED_SOCKET_OPERATION_ERROR
---| 11 UNFINISHED_SOCKET_OPERATION_ERROR
---| 13 SSL_HANDSHAKE_FAILED_ERROR
---| 19 OPERATION_ERROR
---| 20 SSL_INTERNAL_ERROR
---| 21 SSL_INVALID_USERDATA_ERROR
---| 22 TEMPORARY_ERROR
---| -1 UNKNOWN_ERROR

TcpSocket.UNCONNECTED_STATE = 0
TcpSocket.HOST_LOOKUP_STATE = 1
TcpSocket.CONNECTING_STATE = 2
TcpSocket.CONNECTED_STATE = 3
TcpSocket.BOUND_STATE = 4
TcpSocket.CLOSING_STATE = 6

---@alias TcpSocketState
---| 0 UNCONNECTED_STATE
---| 1 HOST_LOOKUP_STATE
---| 2 CONNECTING_STATE
---| 3 CONNECTED_STATE
---| 4 BOUND_STATE
---| 6 CLOSING_STATE

return TcpSocket
