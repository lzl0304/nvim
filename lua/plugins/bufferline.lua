-- https://github.com/akinsho/bufferline.nvim

return {
    {
        'akinsho/bufferline.nvim',
        --version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({
                options = {
                    numbers = "ordinal",
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            highlight = "Directory",
                            text_align = "left"
                        }
                    }
                }
            })
        end
    }
}
