---@meta

controller = require("Controller.library._mosaic")

iomodules = {
    Alarm = require("IOModule.library.Alarm"),
    Mailgun = require("IOModule.library.Mailgun"),
    Stopwatch = require("IOModule.library.Stopwatch"),
    Timer = require("IOModule.library.Timer"),
    Serial = require("IOModule.library.Serial"),
    Stream = require("IOModule.library.Stream"),
    gpio = {
        AnalogInput = require("IOModule.library.gpio.AnalogInput"),
        DigitalInput = require("IOModule.library.gpio.DigitalInput"),
        DigitalOutput = require("IOModule.library.gpio.DigitalOutput"),
    },
    net = {
        UdpSocket = require("IOModule.library.net.UdpSocket"),
        TcpSocket = require("IOModule.library.net.TcpSocket")
    },
    http = {

    }
}


return _G