-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            vim.keymap.set({ "n", "v" }, "<F8>", "<cmd>Neotree toggle<cr>")
            require("neo-tree").setup()
        end,
    }
}
