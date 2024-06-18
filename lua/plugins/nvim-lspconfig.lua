return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lsp = require("lspconfig")

            lsp.clangd.setup {}
            lsp.pyright.setup {}
            lsp.rust_analyzer.setup {
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy"
                        }
                    }
                }
            }
            lsp.tsserver.setup {}
        end,
    }
}
