local Concord = require('lib.concord')
local HC = require('lib.hc')

Concord.component('body', function(c, x, y, w, h)
    c.shape = HC.rectangle(x, y, w, h)
end)

