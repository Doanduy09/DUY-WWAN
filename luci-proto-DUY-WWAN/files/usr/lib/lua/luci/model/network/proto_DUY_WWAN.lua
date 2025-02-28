local m = require "luci.model.network".inherit("DUY_WWAN")
m.name = "DUY-WWAN"
m.description = "DUY-WWAN Protocol for 4G/5G"
function m.setup(self, ifname)
    self:ifname(ifname)
    self:set("proto", "DUY_WWAN")
end
function m.teardown(self)
    self:del("proto")
end
return m
