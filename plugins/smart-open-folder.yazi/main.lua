--- @sync entry
return {
	entry = function()
		local h = cx.active.current.hovered
		if h and h.cha.is_dir then
			ya.emit("open", { hovered = true, use = "openfolder" })
		else
			ya.emit("leave", {})
			ya.emit("open", { hovered = true, use = "openfolder" })
			ya.emit("enter", {})
		end
	end,
}
