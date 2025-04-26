---@meta

controller = require("Controller.library._mosaic")

iomodules = {
    Alarm = require("IOModule.library.Alarm"),
    Mailgun = require("IOModule.library.Mailgun"),
    Payload = require("IOModule.library.Payload"),
    Stopwatch = require("IOModule.library.Stopwatch"),
    Timer = require("IOModule.library.Timer"),
    net = {
        UdpSocket = require("IOModule.library.net.UdpSocket")
    }
}


return _G