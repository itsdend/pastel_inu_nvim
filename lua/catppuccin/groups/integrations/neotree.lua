local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.mantle
	local inactive_bg = O.transparent_background and C.none or C.base
	return {
		NeoTreeDirectoryName = { fg = C.text },
		NeoTreeDirectoryIcon = { fg = C.pink },
		NeoTreeNormal = { fg = C.text, bg = active_bg },
		NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		NeoTreeExpander = { fg = C.text },
		NeoTreeIndentMarker = { fg = C.text },
		NeoTreeRootName = { fg = C.red, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.rosewater },
		NeoTreeModified = { fg = C.peach },

		NeoTreeGitAdded = { fg = C.green },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.rosewater },
		NeoTreeGitIgnored = { fg = C.overlay0 },
		NeoTreeGitModified = { fg = C.blue },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.green },
		NeoTreeGitStaged = { fg = C.green },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.mantle, bg = C.blue },

		NeoTreeFileNameOpened = { fg = C.pink },
		NeoTreeDimText = { fg = C.overlay1 },
		NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.lavender, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.base, bg = inactive_bg },
		NeoTreeStatusLineNC = { fg = C.mantle, bg = C.mantle },
	}
end

return M
