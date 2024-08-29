-- https://github.com/nvim-telescope/telescope.nvim

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            "BurntSushi/ripgrep",
            'nvim-lua/plenary.nvim',
            "nvim-tree/nvim-web-devicons",
        },
        lazy = true,
        cmd = 'Telescope',
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})


            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = {
                        ".cache",
                        ".git",
                        ".idea",
                        ".vscode",
                        "dist",
                        "node_modules",
                    }
                },
                pickers = {
                    defaults = {
                        prompt_prefix = "🔍 ",
                        initial_mode = "normal",
                        mappings = {
                            n = {
                                ["q"] = "close",
                            },
                        },
                    },
                    find_files = {
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    }
                }
            })
        end
    }
}
