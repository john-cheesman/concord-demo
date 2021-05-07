local Concord = require('lib.concord')

Concord.component('velocity', function(c, x, y, speed)
    c.x = x or 0
    c.y = y or 0
    c.speed = speed
end)

