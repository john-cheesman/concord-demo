local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'position', 'velocity' }
})

function M:update(dt)
    for _, e in ipairs(self.pool) do
        local newX, newY = e.position.x + e.velocity.x * dt * e.velocity.speed, e.position.y + e.velocity.y * dt * e.velocity.speed
        e.position.x, e.position.y = newX, newY
    end
end

return M

