-- https://github.com/nvim-lualine/lualine.nvim

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = 'dracula',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                    }
                },
                sections = {
                    lualine_b = { 'branch', 'diff', },
                    lualine_c = {},
                    lualine_x = {
                        { 'encoding', icon = "" },
                        {
                            'fileformat',
                            icon = "",
                            symbols = {
                                unix = "LF",
                                dos = "CRLF",
                                mac = "CR",
                            },
                            color = { gui = "bold" },
                        },
                        { 'filetype', icon = "" } },
                }
            })
        end,
    }
}
