-- ============================================================================
-- PLUGINS (vim.pack)
-- ============================================================================
vim.pack.add({
	"https://www.github.com/lewis6991/gitsigns.nvim",
	"https://www.github.com/echasnovski/mini.nvim",
	"https://www.github.com/ibhagwan/fzf-lua",
	"https://github.com/nvim-neo-tree/neo-tree.nvim",
	"https://github.com/karb94/neoscroll.nvim",
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	-- Language Server Protocols
	"https://www.github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/creativenull/efmls-configs-nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("0.*"),
	},
	"https://github.com/L2MON4D3/LuaSnip",
	"https://github.com/folke/which-key.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	"https://github.com/akinsho/toggleterm.nvim",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/filipjanevski/0x96f.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/mfussenegger/nvim-jdtls",
	"https://github.com/rmagatti/auto-session",
	"https://github.com/folke/flash.nvim",
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end
packadd("nvim-treesitter") --better syntax
packadd("gitsigns.nvim")
packadd("mini.nvim")
packadd("fzf-lua")
packadd("neo-tree.nvim")
packadd("plenary.nvim")
packadd("nui.nvim")
packadd("neoscroll.nvim")
packadd("which-key.nvim")
packadd("nvim-treesitter-textobjects")
packadd("toggleterm.nvim")
packadd("lualine.nvim")
-- LSP
packadd("nvim-lspconfig")
packadd("mason.nvim")
packadd("efmls-configs-nvim")
packadd("blink.cmp")
packadd("LuaSnip")
packadd("0x96f.nvim")
packadd("auto-session")
packadd("flash.nvim")
