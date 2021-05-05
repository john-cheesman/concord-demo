local Concord = require('lib.concord')

local systems = {}
Concord.utils.loadNamespace('components')
Concord.utils.loadNamespace('systems', systems)

local world = Concord.world()

world:addSystems(systems.bodyRenderer)

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest', 1)

    require('entities.player')(world, 16, 16)
    require('entities.wall')(world, 0, 0, 496, 16)
    require('entities.wall')(world, 496, 0, 16, 464)
    require('entities.wall')(world, 16, 464, 496, 16)
    require('entities.wall')(world, 0, 16, 16, 464)
end

function love.update(dt)
    world:emit('update')
end

function love.draw()
    world:emit('draw')
end

