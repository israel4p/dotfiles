vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.cmd [[ let g:indent_blankline_filetype = [ 'python', 'html', 'css' ] ]]

require("ibl").setup()

