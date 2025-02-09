local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

opt.number = true               -- Mostrar numero de linhas
opt.relativenumber = true       -- Numero de linhas relativos
opt.hidden = true               -- Ativa buffer em background
opt.ignorecase = true           -- Ignore case
opt.shiftwidth = 2              -- Tamanho da identacao
opt.tabstop = 2
opt.softtabstop = 0
opt.expandtab = true
opt.smartindent = true          -- Insere identacao automaticamente
opt.wrap = false                -- Desativa quebra de linha
opt.mouse = 'a'                 -- Suporte a mouse
opt.clipboard = 'unnamedplus'   -- copiar/colar para o clipboard
opt.colorcolumn = '79'          -- Coluna
opt.cursorline = true           -- Linha do cursor
opt.confirm = true              -- Confirma quit

-- Tema
-- cmd [[colorscheme gruvbox-flat]]

-- Nao comenta automaticamente em uma nova linha
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- 4 espaços para tipos de aquivos especificos
cmd [[autocmd FileType python setlocal shiftwidth=4 tabstop=4]]

-- Cursor em bloco
cmd [[set guicursor=i:block]]

-- Restaura cursor na ultima posiçao
cmd [[
  function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
    endif
    endfunction

    augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
    augroup END
]]

-- Emmet
cmd [[
  let g:user_emmet_settings = {
  \  'variables': {'lang': 'pt-BR'},
  \  'html': {
  \    'default_attributes': {
  \      'option': {'value': v:null},
  \      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
  \    },
  \    'snippets': {
  \      'html:5': "<!DOCTYPE html>\n"
  \              ."<html lang=\"${lang}\">\n"
  \              ."<head>\n"
  \              ."\t<meta charset=\"${charset}\">\n"
  \              ."\t<title></title>\n"
  \              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
  \              ."</head>\n"
  \              ."<body>\n\t${child}|\n</body>\n"
  \              ."</html>",
  \    },
  \  },
  \}
]]

-- Condiguraçoes do NvimTree
g.nvim_tree_width_allow_resize  = 1
g.nvim_tree_refresh_wait = 1000
