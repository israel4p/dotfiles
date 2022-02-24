local cmd = vim.cmd
local fn = vim.fn

local paq = require('paq').paq

paq {'eddyekofo94/gruvbox-flat.nvim'}
paq {'nvim-lualine/lualine.nvim'}
paq {'savq/paq-nvim', opt = true}
paq {'junegunn/fzf', run = fn['fzf#install']}
paq {'junegunn/fzf.vim'}
paq {'kyazdani42/nvim-web-devicons'}
paq {'kyazdani42/nvim-tree.lua'}
paq {'windwp/nvim-autopairs'}
paq {'goolord/alpha-nvim'}
paq {'hrsh7th/nvim-cmp'}
paq {'neovim/nvim-lspconfig'}
paq {'L3MON4D3/LuaSnip'}
paq {'hrsh7th/cmp-nvim-lsp'}
paq {'hrsh7th/cmp-path'}
paq {'hrsh7th/cmp-buffer'}
paq {'saadparwaiz1/cmp_luasnip'}
paq {'mattn/emmet-vim'}
paq {'tell-k/vim-autopep8'}
paq {'terrortylor/nvim-comment'}
paq {'norcalli/nvim-colorizer.lua'}
paq {'lukas-reineke/indent-blankline.nvim'}
paq {'akinsho/toggleterm.nvim'}
paq {'gelguy/wilder.nvim'}
paq {'mg979/vim-visual-multi'}
