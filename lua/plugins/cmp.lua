
return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline'
    },
    config = function()
        local cmp = require'cmp'
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#expand"](args.body)
                end,
            },
            mapping = {
                ['<C-k>'] = cmp.mapping.select_prev_item(),
                ['<C-j>'] = cmp.mapping.select_next_item(),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.close(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
            }
        })
    end
}
