-- https://github.com/neovim/nvim-lspconfig

return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lsp = require("lspconfig")
            lsp.clangd.setup {}
            lsp.pyright.setup {}
            lsp.rust_analyzer.setup {}
            lsp.ts_ls.setup {}
        end,
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "rust_analyzer",
                }
            })
        end
    }
}
