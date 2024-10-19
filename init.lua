
require("config.lazy")

require("keybinds")

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- Load the tokyonight theme
vim.cmd[[colorscheme tokyonight]]

-- Customizing highlight groups for a glowing effect
vim.api.nvim_set_hl(0, "Comment", {fg = "#82aaff", italic = true})
vim.api.nvim_set_hl(0, "Identifier", {fg = "#ff9e64", bold = true})
vim.api.nvim_set_hl(0, "Function", {fg = "#7aa2f7", bold = true})
vim.api.nvim_set_hl(0, "Keyword", {fg = "#f7768e", bold = true})
vim.api.nvim_set_hl(0, "Statement", {fg = "#bb9af7", bold = true})
vim.api.nvim_set_hl(0, "Type", {fg = "#2ac3de", bold = true})
vim.api.nvim_set_hl(0, "Constant", {fg = "#ff9e64", bold = true})

-- Glowing statusline
vim.api.nvim_set_hl(0, "StatusLine", {fg = "#82aaff", bg = "#1a1b26", bold = true})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = "#565f89", bg = "#1a1b26"})

-- Glowing cursor line
vim.api.nvim_set_hl(0, "CursorLine", {bg = "#1e2030"})

-- Glowing matching parens
vim.api.nvim_set_hl(0, "MatchParen", {fg = "#ff9e64", underline = true, bold = true})

<<<<<<< HEAD
vim.opt.clipboard = "unnamedplus"

-- Set tabs instead of spaces for GDScript
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gdscript",
  callback = function()
    vim.opt_local.expandtab = false  -- Use tabs instead of spaces
    vim.opt_local.tabstop = 4        -- Number of spaces a tab counts for
    vim.opt_local.shiftwidth = 4     -- Indentation width
  end
})

vim.opt.clipboard = 'unnamedplus'
