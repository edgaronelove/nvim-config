vim.g.mapleader = " "
vim.keymap.set("n", "<leader>jj", ":Ex<CR>")
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>so", ":so<CR>")

--Switching to normal mode
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })


--Nvim tree 
vim.api.nvim_set_keymap('n', '<leader>g', ':bd<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>b", ":NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>x", ":NvimTreeCollapse<CR>")
--lua bufferline
vim.keymap.set("n", "<leader>m", ":BufferLineCyclePrev<CR>")
vim.keymap.set('n', "<leader>n", ":BufferLineCycleNext<CR>")
vim.keymap.set('n', "<leader>.", ":BufferLineCloseRight<CR>")
vim.keymap.set('n', "<leader>,", ":BufferLineCloseLeft<CR>")


--Live Server
vim.keymap.set("n", "<leader>li", ":LiveServerStart<CR>")
vim.keymap.set("n", "<leader>ls", ":LiveServerStop<CR>")




-- Настройка bufferline
require('bufferline').setup{}

-- Настройка сочетания клавиш
vim.api.nvim_set_keymap('n', '<Space>/', ':bdelete<CR>', { noremap = true, silent = true })
