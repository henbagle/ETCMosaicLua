---@meta

RIO80 = 101
RIO44 = 102
RIO08 = 103
BPS = 104
RIOA = 105
RIOD = 106
BPI = 107
EXT = 108
EDN20 = 109
EDN10 = 110
RIOG4 = 114
RIOD4 = 115
TPS = 116
TPS5 = 117
TPS8 = 118

---@alias RIOType
---| 101 RIO80
---| 102 RIO44
---| 103 RIO08
---| 105 RIOA
---| 106 RIOD
---| 114 RIOG4
---| 115 RIOD4

---@alias TPSType
---| 116 TPS
---| 117 TPS5
---| 118 TPS8

---@alias EDNType
---| 109 EDN20
---| 110 EDN10

---@alias RemoteDeviceType
---| RIOType
---| 104 BPS
---| 107 BPI
---| 108 EXT
---| EDNType
---| TPSType