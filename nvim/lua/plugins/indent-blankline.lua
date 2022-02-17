vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.cmd [[ let g:indent_blankline_filetype = [ 'python', 'html', 'css' ] ]]

require("indent_blankline").setup {
    show_end_of_line = true,
}
