local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'input' }
})

function M:init()
    self.joystick = love.joystick.getJoysticks()[1]
    self.faceButtons = { 'a', 'b', 'x', 'y' }
    self.keyboardButtons = { 'z', 'x', 's', 'a' }
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

            for _, b in ipairs(self.faceButtons) do
                if self.joystick:isGamepadDown(b) then
                    input[b] = true
                end
            end
        else
            if love.keyboard.isDown('left') then
                input.dpad.x = -1
            elseif love.keyboard.isDown('right') then
                input.dpad.x = 1
            end

            if love.keyboard.isDown('up') then
                input.dpad.y = -1
            elseif love.keyboard.isDown('down') then
                input.dpad.y = 1
            end

            for i, b in ipairs(self.keyboardButtons) do
                if love.keyboard.isDown(b) then
                    input[self.faceButtons[i]] = true
                end
            end
        end

       -- print(input.dpad.x, input.dpad.y, input.a, input.b, input.x, input.y)
    end
end

return M

