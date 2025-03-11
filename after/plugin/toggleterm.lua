-- Настройка toggleterm
require("toggleterm").setup{
  size = 20,
  direction = 'horizontal',
  shade_terminals = true,
  start_in_insert = true,
  persist_size = true,
  close_on_exit = true,
  shell = vim.o.shell,
  auto_scroll = true,
}

-- Настройка сочетания клавиш Space + tm
vim.api.nvim_set_keymap('n', '<leader>tm', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })

