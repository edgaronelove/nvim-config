-- Включаем плагин undotree
vim.g.undotree_SetFocusWhenToggle = 1  -- Автоматически фокусироваться на undotree
vim.g.undotree_WindowLayout = 3        -- Использовать вертикальное окно для отображения истории
vim.g.undotree_TreeNodeColor = 'red'   -- Цвет узлов в дереве

-- Настройки для diff (если необходимо)
vim.g.undotree_DiffCommand = 'git diff' -- Указываем команду diff для Git

