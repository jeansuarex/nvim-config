return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
    require("themery").setup({
      themes = {"gruvbox-material", "tokyonight-storm", "github_dark_tritanopia", "github_light"}, 
      livePreview = true, 
    })
    end
}
