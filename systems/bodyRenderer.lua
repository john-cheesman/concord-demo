local Concord = require('lib.concord')

local M = Concord.system({
    pool = { 'body' }
})

function M:draw()
    for _, e in ipairs(self.pool) do
        e.body.shape:draw('line')
    end
end

return M

