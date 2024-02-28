return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup({
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
                }
            })
        end
    }
}
