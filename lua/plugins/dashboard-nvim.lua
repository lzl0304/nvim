-- https://github.com/nvimdev/dashboard-nvim

return {
    {
        "nvimdev/dashboard-nvim",
        event = 'VimEnter',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } },
        config = function()
            require('dashboard').setup {
                theme = 'doom',
                config = {
                    week_header = {
                        enable = true,
                    },
                    center = {
                        {
                            icon = ' ',
                            desc = 'New File',
                            action = 'ene',
                            shortcut = 'SPC f n',
                            key = 'n'
                        },
                        {
                            icon = '󰈞 ',
                            desc = 'Find File',
                            action = 'Telescope find_files',
                            shortcut = 'SPC f f',
                            key = 'f'
                        },
                        {
                            icon = ' ',
                            desc = 'Recently Used Files',
                            action = 'Telescope oldfiles',
                            shortcut = 'SPC f r',
                            key = 'r'
                        },
                        {
                            icon = ' ',
                            desc = 'Open Projects',
                            action = 'Telescope projects',
                            shortcut = 'SPC f p',
                            key = 'p'
                        },
                        {
                            icon = '󰛉 ',
                            desc = 'Quit',
                            action = 'quit',
                            shortcut = 'q',
                            key = 'q'
                        },
                    },
                    footer = {
                        "",
                        "",
                        '平淡好过烦恼',
                        "",
                        'NeoVim ' .. 'v' .. vim.version().major .. '.' .. vim.version().minor .. '.' .. vim.version().patch,
                        "Config path" .. ": " .. vim.fn.stdpath("config"),
                    },
                },
            }
        end,
    }
}
