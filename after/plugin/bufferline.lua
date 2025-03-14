require('bufferline').setup({
    options = {
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator_icon = '▎',
        buffer_close_icon = ':(',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = false,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id',
    },
    highlights = {
        fill = {
            guibg = 'NONE',
        },
        background = {
            guibg = 'NONE',
        },
        buffer_selected = {
            guibg = 'NONE',
        },
        buffer_visible = {
            guibg = 'NONE',
        },
        separator = {
            guibg = 'NONE',
            guifg = 'NONE',
        },
        separator_selected = {
            guibg = 'NONE',
            guifg = 'NONE',
        },
        separator_visible = {
            guibg = 'NONE',
            guifg = 'NONE',
        },
        indicator_selected = {
            guibg = 'NONE',
        },
    },
})
