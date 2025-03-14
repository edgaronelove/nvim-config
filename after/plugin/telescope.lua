local builtin = require('telescope.builtin')

-- Поиск файлов, включая скрытые
vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({ hidden = true })
end, { desc = "Find Files (including hidden)" })

-- Поиск файлов в git-репозитории
vim.keymap.set('n', '<C-p>', function()
  builtin.git_files()
end, { desc = "Find Git-tracked Files" })

-- Поиск текста через grep, включая скрытые файлы
vim.keymap.set('n', '<leader>fw', function()
  builtin.grep_string({
    search = vim.fn.input("Grep > "),
    hidden = true
  })
end, { desc = "Live Grep with input" })

