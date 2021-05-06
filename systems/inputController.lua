local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'input' }
})

function M:init()
    self.joystick = love.joystick.getJoysticks()[1]
end

function M:update()
    for _, e in ipairs(self.pool) do
        local input = e.input
        input.dpad.x = 0
        input.dpad.y = 0
        input.a = false
        input.b = false
        input.x = false
        input.y = false

        if self.joystick then
            if self.joystick:isGamepadDown('dpleft') then
                input.dpad.x = -1
            elseif self.joystick:isGamepadDown('dpright') then
                input.dpad.x = 1
            end

            if self.joystick:isGamepadDown('dpup') then
                input.dpad.y = -1
            elseif self.joystick:isGamepadDown('dpdown') then
                input.dpad.y = 1
            end

            local faceButtons = { 'a', 'b', 'x', 'y' }

            for _, b in ipairs(faceButtons) do
                if self.joystick:isGamepadDown(b) then
                    input[b] = true
                end
            end
        end

        --print(input.dpad.x, input.dpad.y, input.a, input.b, input.x, input.y)
    end
end

return M

