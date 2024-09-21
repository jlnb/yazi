return {
	entry = function()
		local h = cx.active.current.hovered
		if h and h.cha.is_dir then
			ya.manager_emit("open", {})
		else
			ya.manager_emit("leave", {})
			ya.manager_emit("open", {})
			ya.manager_emit("enter", {})
		end
	end,
}
