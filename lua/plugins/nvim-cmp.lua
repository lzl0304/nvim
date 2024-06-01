return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-buffer",
        -- "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lsp-signature-help"
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            completion = {
                keyword_length = 2
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
            sources = {
                { name = "path" },
                { name = 'vsnip' },
                { name = "buffer" },
                { name = "cmdline" },
                { name = "nvim_lsp" },
                { name = 'nvim_lsp_signature_help' }
            },
        })
    end,
}
