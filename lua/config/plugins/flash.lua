local flash = require("flash")

flash.setup({
	highlight = { backdrop = false },
	modes = {
		-- Enhanced f/F/t/T — same keys, now work across lines
		char = {
			enabled = true,
			jump_labels = false, -- no labels for f/t, keeps it feeling native
			multi_line = true,
			highlight = { backdrop = false },
		},
		-- s = jump to any location with labels
		-- S = treesitter-aware node jump
		search = { enabled = false }, -- don't hijack / search
	},
})

-- s: jump anywhere on screen with labels
vim.keymap.set({ "n", "x", "o" }, "s", flash.jump, { desc = "Flash jump" })
-- S: jump to treesitter node
vim.keymap.set({ "n", "x", "o" }, "S", flash.treesitter, { desc = "Flash treesitter" })
-- r/R: operator-pending remote flash (e.g. yr<label> to yank from another location)
vim.keymap.set("o", "r", flash.remote, { desc = "Flash remote" })
vim.keymap.set({ "o", "x" }, "R", flash.treesitter_search, { desc = "Flash treesitter search" })
