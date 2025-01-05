local utils = {
    ---@class colour
    ---@field red number[]
    ---@field yellow number[]
    ---@field green number[]
    ---@field blue number[]
    ---@field indigo number[]
    ---@field violet number[]
    ---@field white number[]
    ---@field black number[]
    colours = {
        red    = { 193 / 255, 63 / 255, 55 / 255 },
        yellow = { 253 / 255, 241 / 255, 172 / 255 },
        green  = { 221 / 255, 255 / 255, 221 / 255 },
        blue   = { 168 / 255, 183 / 255, 234 / 255 },
        indigo = { 184 / 255, 102 / 255, 211 / 255 },
        violet = { 251 / 255, 224 / 255, 254 / 255 },
        white  = { 1, 1, 1 },
        black  = { 0, 0, 0 }
    }
}

return utils
