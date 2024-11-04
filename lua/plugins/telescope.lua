return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                prompt_prefix = "❯ ",
                selection_caret = "❯ ",
                file_ignore_patterns = {".git"},
                      mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                    },
                },
            },
        })
    end,
}
