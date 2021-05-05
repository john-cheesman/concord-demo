local Concord = require('lib.concord')

return function(world, x, y, w, h)
    Concord.entity(world)
        :give('position', x, y)
        :give('body', w, h)
        :give('type', 'wall')
end

