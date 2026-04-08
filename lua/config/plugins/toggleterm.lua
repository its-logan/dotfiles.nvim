require("toggleterm").setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<leader>tt]],
	direction = "float",
	float_opts = {
		border = "rounded",
		winblend = 0,
	},
	on_open = function()
		vim.opt_local.signcolumn = "no"
	end,
})

vim.keymap.set("t", "<Esc>", "<C-\\><C-n><cmd>ToggleTerm<CR>", { noremap = true, silent = true })
