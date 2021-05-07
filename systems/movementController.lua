local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'input', 'velocity' }
})

function M:update()
    for _, e in ipairs(self.pool) do
        e.velocity.x, e.velocity.y = e.input.dpad.x, e.input.dpad.y
    end
end

return M

