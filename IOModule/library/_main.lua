---@meta

_G = {}

---@type controller
_G.controller = {}

_G.iomodules = {
    Alarm = require("IOModule.library.Alarm"),
    Timer = require("IOModule.library.Timer"),
    net = {
        UdpSocket = require("IOModule.library.net.UdpSocket")
    }
}


return _G