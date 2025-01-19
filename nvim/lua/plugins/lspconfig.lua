local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "openFilesOnly",
      useLibraryCodeForTypes = true
    }
  }
}
