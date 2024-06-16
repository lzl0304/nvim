return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lsp = require("lspconfig")

            lsp.clangd.setup {}
            lsp.pyright.setup {}
            lsp.rust_analyzer.setup {}
            lsp.tsserver.setup {}
        end,
    }
}
