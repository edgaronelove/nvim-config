require("edgaronelove")
require('live-server').setup(opts)
require('impatient').enable_profile()
vim.env.PATH = vim.env.PATH .. ':/c/Program Files/Git/bin'
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4  -- Для выравнивания отступов
vim.opt.expandtab = true  -- Использовать пробелы вместо табуляций
vim.opt.softtabstop = 4  -- Четыре пробела для мягкого отступа
vim.opt.swapfile = false
vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>UndotreeToggle<CR>', { noremap = true, silent = true })
vim.opt.updatetime = 100
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        os.remove(vim.fn.expand("C:/Users/Мухаммад/AppData/Local/nvim-data/shada/main.shada"))
    end
})


-- Функция для установки цветов номеров строк
function LineNumberColors()
  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'white', bold = true })  -- Цвет для номеров строк выше текущей строки
  vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })          -- Цвет для текущего номера строки
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'white', bold = true })  -- Цвет для номеров строк ниже текущей строки
end

-- Вызов функции после установки цветовой схемы
vim.cmd('colorscheme rose-pine')
vim.schedule(LineNumberColors)  -- Используем vim.schedule для вызова функции после установки цветовой схемы

-- Автокоманда для обновления цветов номеров строк при смене цветовой схемы
vim.cmd('autocmd ColorScheme * lua LineNumberColors()')


-- Yank to system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
-- Установите прозрачный фон для нескольких групп
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]

