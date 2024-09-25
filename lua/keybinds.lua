--
-- Telescope
--
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Find files (normal mode)
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)

-- Search for a string (normal mode)
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)

-- Find in recently opened files (normal mode)
map('n', '<leader>fr', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", opts)

-- List all buffers (normal mode)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)

-- Show help tags (normal mode)
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

-- List keymaps (normal mode)
map('n', '<leader>fk', "<cmd>lua require('telescope.builtin').keymaps()<CR>", opts)

-- Search within the current buffer (normal mode)
map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opts)

-- Grep for word under cursor (normal mode)
map('n', '<leader>fw', "<cmd>lua require('telescope.builtin').grep_string()<CR>", opts)
