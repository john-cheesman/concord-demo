local Concord = require('lib.concord')
local Vector = require('lib.hc.vector-light')

local M = Concord.system({
    pool = { 'input', 'velocity' }
})

function M:update()
    for _, e in ipairs(self.pool) do
        local x, y = e.input.dpad.x, e.input.dpad.y

        if x ~= 0 and y ~= 0 then
            x, y = Vector.normalize(x, y)
        end

        e.velocity.x, e.velocity.y = x, y
    end
end

return M

