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

--
-- Generic
--
map('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })

--
-- Debug go
--
vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = 'Start/Continue Debugging' })
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = 'Step Over' })
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = 'Step Into' })
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = 'Step Out' })
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { desc = 'Set Conditional Breakpoint' })
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, { desc = 'Open Debug REPL' })
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = 'Run Last Debug Session' })
