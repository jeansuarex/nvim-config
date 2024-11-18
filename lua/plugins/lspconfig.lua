
return {
    'neovim/nvim-lspconfig',
    config = function()
        require'lspconfig'.pyright.setup{}

        require'lspconfig'.html.setup{}

        require'lspconfig'.cssls.setup{}
    end
}
