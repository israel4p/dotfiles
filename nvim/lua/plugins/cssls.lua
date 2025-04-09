local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
  provideFormatter = true,
  css = {
    validate = true
  },
  less = {
    validate = true
  },
  scss = {
    validate = true
  }
}
