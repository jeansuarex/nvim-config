
function Runner()
    local current_file = vim.fn.expand('%:p')
    if vim.fn.filereadable(current_file) == 1 then
        vim.cmd('write') 
        local input_file = 'input.txt'
        if vim.fn.filereadable(input_file) == 1 then
            vim.cmd('edit ' .. vim.fn.fnameescape(input_file))
            vim.cmd('write')
            vim.cmd('edit ' .. vim.fn.fnameescape(current_file))
        else
            print("El archivo no existe: " .. input_file)
            return
        end

        local output_file = 'output.txt'
        vim.cmd('!py ' .. vim.fn.fnameescape(current_file) .. ' < ' .. vim.fn.fnameescape(input_file) .. ' > ' .. vim.fn.fnameescape(output_file))
        print("Salida guardada en: " .. output_file)
    else
        print("El archivo no existe: " .. current_file)
    end
end

vim.cmd('command! GO lua Runner()')

