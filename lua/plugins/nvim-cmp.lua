-- https://github.com/hrsh7th/nvim-cmp

return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-emoji",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
            config = function()
                -- require("luasnip.loaders.from_vscode").lazy_load()
                local snippets_path = vim.fn.stdpath("config") .. "/snippets/"
                require("luasnip.loaders.from_vscode").load({ paths = snippets_path })
            end
        },
        "saadparwaiz1/cmp_luasnip"
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            completion = {
                keyword_length = 3
            },
            mapping = cmp.mapping.preset.insert({
                ["<Tab>"] = function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end,
                ["<S-Tab>"] = function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end,
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            sources = {
                { name = "emoji" },
                { name = "buffer" },
                { name = "luasnip" },
                { name = "nvim_lsp" },
                { name = "path" },
            },
        })
    end,
}
