local m = require "luci.model.network".inherit("DUY_WWAN")

m.name = "DUY-WWAN"
m.description = "DUY-WWAN Protocol for 4G/5G"

function m.setup(self, ifname)
    self:ifname(ifname)
    self:set("proto", "DUY_WWAN")
    self:set("auto", "1")
    local apn = self:get("apn") or "internet"
    local modem_dev = self:get("device") or "/dev/ttyUSB2"
    os.execute("chat -v -f /etc/chatscripts/DUY-WWAN.chat < " .. modem_dev .. " > " .. modem_dev)
end

function m.teardown(self)
    self:del("proto")
end

m:option("apn", "APN", "Access Point Name")
m:option("device", "Modem Device", "e.g., /dev/ttyUSB2")

return m
