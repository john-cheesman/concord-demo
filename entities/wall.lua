local Concord = require('lib.concord')

return function(world, x, y, w, h)
    Concord.entity(world)
        :give('body', x, y, w, h)
        :give('type', 'wall')
end

