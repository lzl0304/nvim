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
                    "json",
                    "javascript",
                    "markdown",
                    "python",
                    "rust"
                },
                highlight = {
                    enable = true,
                },
                indent = { enable = true, disable = { "python" } },
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
