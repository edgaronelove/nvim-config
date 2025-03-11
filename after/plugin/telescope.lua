local builtin = require('telescope.builtin')

-- Поиск файлов, включая скрытые
vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({ hidden = true })
end, {})

-- Поиск файлов в git-репозитории, включая скрытые
vim.keymap.set('n', '<C-p>', function()
  builtin.git_files({ hidden = true })
end, {})

-- Поиск с использованием grep, включая скрытые
vim.keymap.set('n', '<leader>fw<CR>', function()
  builtin.grep_string({ 
    search = vim.fn.input("Grep > "),
    hidden = true
  })
end)

