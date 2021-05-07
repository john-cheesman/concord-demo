local Concord = require('lib.concord')

return function(world, x, y)
    Concord.entity(world)
        :give('position', x, y)
        :give('body', 16, 16)
        :give('velocity', 0, 0, 50)
        :give('type', 'player')
        :give('input')
end

