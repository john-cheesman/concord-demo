local Concord = require('lib.concord')

local world = Concord.world()

function love.update(dt)
    world:emit('update')
end

function love.draw()
    world:emit('draw')
end

