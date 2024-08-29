-- https://github.com/mhartington/formatter.nvim

return {
    {
        'mhartington/formatter.nvim',
        config = function()
            require("formatter").setup()
        end,
    }
}
