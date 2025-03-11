require'nvim-tree'.setup {
  sort_by = "name",
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false 
      }
    }
  },
  filters = {
    dotfiles = false,  -- Показывать скрытые файлы
  },
  git = {
    enable = false,  -- Отключаем git-фильтрацию
  }
}

