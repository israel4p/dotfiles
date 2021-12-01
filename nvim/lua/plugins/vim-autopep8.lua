local cmd = vim.cmd

cmd 'source ~/.local/share/nvim/site/pack/paqs/start/vim-autopep8/plugin/python_autopep8.vim'
cmd[[
  let g:autopep8_on_save = 1
  let g:autopep8_disable_show_diff=1
]]
