require("auto-session").setup({
	-- automatically restore the session for the cwd on startup
	auto_restore_enabled = true,
	-- automatically save the session when leaving
	auto_save_enabled = true,
	-- suppress session creation for these dirs (e.g. home, root, tmp)
	suppress_dirs = { "~/", "/", "/tmp" },
	-- store sessions in the default data dir (~/.local/share/nvim/sessions/)
	log_level = "error",
	-- close neo-tree before saving so it isn't restored as a broken window
	pre_save_cmds = {
		function()
			require("neo-tree.command").execute({ action = "close" })
		end,
	},
})

vim.keymap.set("n", "<leader>ss", ":SessionSave<CR>",    { desc = "Save session" })
vim.keymap.set("n", "<leader>sr", ":SessionRestore<CR>", { desc = "Restore session" })
vim.keymap.set("n", "<leader>sd", ":SessionDelete<CR>",  { desc = "Delete session" })
