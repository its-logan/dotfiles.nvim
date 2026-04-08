require("which-key").setup({})

vim.keymap.set("n", "<leader>?",function ()
	require("which-key").show()
end, { desc = "Which Key"})
