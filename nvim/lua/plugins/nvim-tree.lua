local cmd = vim.cmd

require('nvim-tree').setup {
  filters = {
    dotfiles = true,
    custom = {},
    exclude = {}
  },
}
