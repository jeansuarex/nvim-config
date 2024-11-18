
vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<N>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', 'ggVG"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ev', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })
