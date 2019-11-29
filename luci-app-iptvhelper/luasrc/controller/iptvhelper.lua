-- Copyright 2019 Shun Li <riverscn@gmail.com>
-- Licensed to the public under GPL3

module("luci.controller.iptvhelper", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/iptvhelper") then
		return
	end

	local page = entry({"admin", "services", "IPTV helper"}, cbi("iptvhelper"), _("iptvhelper"))
	page.dependent = true

end