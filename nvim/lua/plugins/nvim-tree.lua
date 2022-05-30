local cmd = vim.cmd

require('nvim-tree').setup {
  auto_reload_on_write = true,
  respect_buf_cwd = true,
  filters = {
    dotfiles = true,
    custom = {},
    exclude = {},
  },
  renderer = {
    add_trailing = true,
    highlight_opened_files = "all",
    highlight_git = true,

    icons = {
      glyphs = {
        default = "‣"
      }
    }
  },
}
