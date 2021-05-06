local Concord = require('lib.concord')

Concord.component('input', function(c)
    c.dpad = { x = 0, y = 0 }
    c.x = false
    c.y = false
    c.a = false
    c.b = false
end)

