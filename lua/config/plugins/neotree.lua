require("neo-tree").setup({
    close_if_last_window = true,
    window = {
        width = 35,
        mappings = {
            ["<space>"] = "none", -- prevent conflict with leader
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
        },
        group_empty_dirs = true,
    },
    default_component_configs = {
        indent = {
            with_markers = true,
            indent_marker = "│",
            last_child_marker = "└",
        },
    },
})

local colors = require("0x96f").colors

vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", fg = colors.fg })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = colors.bg_light, bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.git_add })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.git_change })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.git_delete })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.git_untracked })
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = colors.fg_dim })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = colors.comment })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle Neotree" })
