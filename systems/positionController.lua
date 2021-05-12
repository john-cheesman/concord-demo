local Concord = require('lib.concord')
local HC = require('lib.hc')

local M = Concord.system({
    pool = { 'body', 'velocity' }
})

function M:update(dt)
    for _, e in ipairs(self.pool) do
        local dx, dy = e.velocity.x * dt * e.velocity.speed, e.velocity.y * dt * e.velocity.speed

        e.body.shape:move(dx, dy)

        local cx, cy = 0, 0

        for shape, delta in pairs(HC.collisions(e.body.shape)) do
            cx, cy = cx + delta.x, cy + delta.y
        end

        e.body.shape:move(cx, cy)
    end
end

return M

