--- @sync entry
return {
	entry = function()
		local h = cx.active.current.hovered
		if h and h.cha.is_dir then
			ya.emit("explorer", {})
		else
			ya.emit("leave", {})
			ya.emit("explorer", {})
			ya.emit("enter", {})
		end
	end,
}

--return {
--    entry = function()
--        local h = cx.active.current.hovered
--        if not h then return end
--
--        -- Zielpfad ermitteln
--        local target = tostring(h.url)
--        if not h.cha.is_dir then
--            target = tostring(cx.active.current.cwd)
--        end
--
--        -- OS-Check über globale Konstanten (robuster in 2026)
--        if ya.target_family() == "windows" then
--            ya.sh(string.format('explorer "%s"', target))
--        elseif ya.target_family() == "macos" then
--            ya.sh(string.format('open "%s"', target))
--        else
--            -- Für Linux: Probiere xdg-open
--            ya.sh(string.format('xdg-open "%s"', target))
--        end
--    end,
--}

