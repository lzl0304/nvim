return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = {
                    "c",
                    "cpp",
                    "css",
                    "go",
                    "html",
                    "javascript",
                    "json",
                    "markdown",
                    "python",
                    "rust",
                    "typescript",
                },
                highlight = {
                    enable = true,
                },
                indent = { enable = true, disable = { "python" } },
                autopairs = {
                    enable = true
                },
                autotag = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<c-space>",
                        node_incremental = "<c-space>",
                        scope_incremental = "<c-s>",
                        node_decremental = "<c-backspace>",
                    },
                },
            })
        end
    }
}
