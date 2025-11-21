vim.cmd [[set listchars=tab:\ \ ,trail:-]]

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.py", "*.go", "*.sh", "*.bash" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
