require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',  
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {
      {
        'mode',
        color = function()
          local mode_color = {
            n = { fg = '#000000', bg = '#87CEEB' },
            i = { fg = '#FFFFFF', bg = '#2ecc71' },
            v = { fg = '#FFFFFF', bg = '#9b59b6' },
            [''] = { fg = '#FFFFFF', bg = '#9b59b6' },
            V = { fg = '#FFFFFF', bg = '#9b59b6' },
            c = { fg = '#FFFFFF', bg = '#e67e22' },
            no = { fg = '#FFFFFF', bg = '#87CEEB' },
            s = { fg = '#FFFFFF', bg = '#e74c3c' },
            S = { fg = '#FFFFFF', bg = '#e74c3c' },
            [''] = { fg = '#FFFFFF', bg = '#e74c3c' },
            ic = { fg = '#FFFFFF', bg = '#3498db' },
            R = { fg = '#FFFFFF', bg = '#f39c12' },
            Rv = { fg = '#FFFFFF', bg = '#f39c12' },
            cv = { fg = '#FFFFFF', bg = '#e67e22' },
            ce = { fg = '#FFFFFF', bg = '#e67e22' },
            r = { fg = '#000000', bg = '#ecf0f1' },
            rm = { fg = '#000000', bg = '#ecf0f1' },
            ['r?'] = { fg = '#000000', bg = '#ecf0f1' },
            ['!'] = { fg = '#FFFFFF', bg = '#c0392b' },
            t = { fg = '#FFFFFF', bg = '#1abc9c' },
          }
          return mode_color[vim.fn.mode()]
        end,
      },
    },
    lualine_b = {},
    lualine_c = {
      'filename',
      {
        function() return os.date("%H:%M") end, 
        color = { fg = 'white', bg = '#000000', gui = 'bold' }
      },
      {
        'diagnostics',
        sources = {'nvim_lsp'},
        sections = {'error', 'warn', 'info', 'hint'},
        diagnostics_color = {
          error = 'DiagnosticError',
          warn  = 'DiagnosticWarn',
          info = 'DiagnosticInfo',
          hint = 'DiagnosticHint',
        },
        symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
        colored = true,
        update_in_insert = false,
        always_visible = false,
      },
      {
        get_battery_status_windows,
        color = { fg = 'yellow', bg = 'black', gui = 'bold' }
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {
      {
        'progress',
        color = function()
          local mode_color = {
            n = { fg = '#000000', bg = '#87CEEB' },
            i = { fg = '#FFFFFF', bg = '#2ecc71' },
            v = { fg = '#FFFFFF', bg = '#9b59b6' },
            [''] = { fg = '#FFFFFF', bg = '#9b59b6' },
            V = { fg = '#FFFFFF', bg = '#9b59b6' },
            c = { fg = '#FFFFFF', bg = '#e67e22' },
            no = { fg = '#FFFFFF', bg = '#87CEEB' },
            s = { fg = '#FFFFFF', bg = '#e74c3c' },
            S = { fg = '#FFFFFF', bg = '#e74c3c' },
            [''] = { fg = '#FFFFFF', bg = '#e74c3c' },
            ic = { fg = '#FFFFFF', bg = '#3498db' },
            R = { fg = '#FFFFFF', bg = '#f39c12' },
            Rv = { fg = '#FFFFFF', bg = '#f39c12' },
            cv = { fg = '#FFFFFF', bg = '#e67e22' },
            ce = { fg = '#FFFFFF', bg = '#e67e22' },
            r = { fg = '#000000', bg = '#ecf0f1' },
            rm = { fg = '#000000', bg = '#ecf0f1' },
            ['r?'] = { fg = '#000000', bg = '#ecf0f1' },
            ['!'] = { fg = '#FFFFFF', bg = '#c0392b' },
            t = { fg = '#FFFFFF', bg = '#1abc9c' },
          }
          return mode_color[vim.fn.mode()]
        end,
      }
    },
    lualine_z = {
      {
        'location',
        color = function()
          local mode_color = {
            n = { fg = '#000000', bg = '#87CEEB' },
            i = { fg = '#FFFFFF', bg = '#2ecc71' },
            v = { fg = '#FFFFFF', bg = '#9b59b6' },
            [''] = { fg = '#FFFFFF', bg = '#9b59b6' },
            V = { fg = '#FFFFFF', bg = '#9b59b6' },
            c = { fg = '#FFFFFF', bg = '#e67e22' },
            no = { fg = '#FFFFFF', bg = '#87CEEB' },
            s = { fg = '#FFFFFF', bg = '#e74c3c' },
            S = { fg = '#FFFFFF', bg = '#e74c3c' },
            [''] = { fg = '#FFFFFF', bg = '#e74c3c' },
            ic = { fg = '#FFFFFF', bg = '#3498db' },
            R = { fg = '#FFFFFF', bg = '#f39c12' },
            Rv = { fg = '#FFFFFF', bg = '#f39c12' },
            cv = { fg = '#FFFFFF', bg = '#e67e22' },
            ce = { fg = '#FFFFFF', bg = '#e67e22' },
            r = { fg = '#000000', bg = '#ecf0f1' },
            rm = { fg = '#000000', bg = '#ecf0f1' },
            ['r?'] = { fg = '#000000', bg = '#ecf0f1' },
            ['!'] = { fg = '#FFFFFF', bg = '#c0392b' },
            t = { fg = '#FFFFFF', bg = '#1abc9c' },
          }
          return mode_color[vim.fn.mode()]
        end,
      }
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {
      {
        'progress',
        color = { fg = '#000000', bg = '#87CEEB', gui = 'italic' },
      }
    },
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

