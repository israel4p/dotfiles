local map = vim.api.nvim_set_keymap

map('n', '<C-n>', ':Buffer<CR>', {noremap = true})          -- Open Buffer fzf
map('n', '<F3>', ':NvimTreeToggle<CR>', {noremap = true})   -- Open File Explorer
map('n', '<C-r>', ':NvimTreeRefresh<CR>', {noremap = true}) -- Refresh File Explorer
map('n', '<F5>', ':ToggleTerm<CR>', {noremap = true})         -- Open Terminal
