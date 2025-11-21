local map = vim.api.nvim_set_keymap

map('n', '<F3>', ':NvimTreeToggle<CR>', {noremap = true})   -- Open File Explorer
map('n', '<F5>', ':ToggleTerm<CR>', {noremap = true})         -- Open Terminal
