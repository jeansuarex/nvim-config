function Aoc()
    vim.cmd('vsplit input.txt')
    vim.cmd('w')
    vim.cmd('wincmd l')
    vim.cmd('split output.txt')
    vim.cmd('resize -13')
    vim.cmd('w')  
    vim.cmd('wincmd h')
    vim.cmd('w')  
end
    
vim.cmd('command! Aoc lua Aoc()')
