
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
    require("plugins.nvim-tree"),
    require("plugins.undotree"),
    require("plugins.colorschemes"),
    require("plugins.lspconfig"),
    require("plugins.surround"),
    require("plugins.cmp"),
    require("plugins.telescope"),  
    require("plugins.alpha"),
    require("plugins.themery"),
})

-- options 
require("core.options")
require("core.keymaps")


