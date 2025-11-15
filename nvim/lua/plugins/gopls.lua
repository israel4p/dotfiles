-- gopls.lua
-- Configuração moderna usando vim.lsp.config (sem lspconfig)

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_caps = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Define as configurações do gopls
vim.lsp.config["gopls"] = {
  cmd = { "gopls" },

  settings = {
    gopls = {
      usePlaceholders = true,
      completeUnimported = true,
      staticcheck = true,
      gofumpt = true,

      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },

      analyses = {
        unusedparams = true,
        nilness = true,
        shadow = true,
        unusedwrite = true,
        useany = true,
      },
    },
  },

  capabilities = cmp_caps,

  on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
}

-- Auto iniciar gopls para arquivos Go
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "gomod", "gowork", "gotmpl" },
  callback = function()
    vim.lsp.start(vim.lsp.config["gopls"])
  end,
})

