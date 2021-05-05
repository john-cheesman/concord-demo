local Concord = require('lib.concord')

Concord.component('body', function(c, w, h, x, y)
    c.w = w
    c.h = h
    c.x = x or 0
    c.y = y or 0
end)

