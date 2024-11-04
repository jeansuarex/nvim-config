return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require("nvim-tree").setup {
            renderer = {
                root_folder_modifier = ':t',
                icons = {
                    diagnostics_placement = 'signcolumn',
                    git_placement = 'after',
                    glyphs = {
                        default = 'x',
                        symlink = 's',
                        folder = {
                            arrow_open = '',
                            arrow_closed = '',
                            default = '[x]',
                            open = ']x[',
                            empty = '[ ]',
                            empty_open = '] [',
                            symlink = '[s]',
                            symlink_open = ']s[',
                        },
                        git = {
                            unstaged = '*',
                            staged = '',
                            deleted = '',
                            unmerged = '',
                            renamed = '',
                            untracked = '',
                            ignored = '',
                        },
                    },
                },
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = false,
                icons = {
                    hint = '?',
                    info = '*',
                    warning = '!',
                    error = '!',
                },
            },
           filters = {
                dotfiles = false,  
                custom = { ".git" },  
            },
        }
    end
}
