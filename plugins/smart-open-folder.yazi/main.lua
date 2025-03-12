--- @sync entry
return {
	entry = function()
		local h = cx.active.current.hovered
		if h and h.cha.is_dir then
			ya.mgr_emit("open", {})
		else
			ya.mgr_emit("leave", {})
			ya.mgr_emit("open", {})
			ya.mgr_emit("enter", {})
		end
	end,
}
