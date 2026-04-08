require("0x96f").setup()
vim.cmd.colorscheme("0x96f")

-- style line numbers using theme colors
-- LineNr        = relative numbers and gutter (dimmed)
-- CursorLineNr  = absolute number on the current line (bright)
local colors = require("0x96f").colors
vim.api.nvim_set_hl(0, "LineNr",       { fg = colors.comment, bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.blue,    bg = "none", bold = true })

require("lualine").setup({
    options = {
        theme = require("0x96f").get_lualine_theme(),
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
    },
})
