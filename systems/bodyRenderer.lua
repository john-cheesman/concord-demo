local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'position', 'body' }
})

function M:draw()
    for _, e in ipairs(self.pool) do
        love.graphics.rectangle('line', e.position.x, e.position.y, e.body.w, e.body.h)
    end
end

return M

