local Concord = require('lib.concord')

local systems = {}
Concord.utils.loadNamespace('components')
Concord.utils.loadNamespace('systems', systems)

local world = Concord.world()

world:addSystems(
    systems.bodyRenderer,
    systems.inputController,
    systems.movementController,
    systems.positionController)

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest', 1)

    require('entities.player')(world, 16, 16)
    require('entities.wall')(world, 0, 0, 240, 16)
    require('entities.wall')(world, 240, 0, 16, 224)
    require('entities.wall')(world, 16, 224, 240, 16)
    require('entities.wall')(world, 0, 16, 16, 224)
end

function love.update(dt)
    world:emit('update', dt)
end

function love.draw()
    world:emit('draw')
end

