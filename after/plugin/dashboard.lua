local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
  "████╗  ██║██║   ██║██║████╗ ████║",
  "██╔██╗ ██║██║   ██║██║██╔████╔██║",
  "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
  "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

dashboard.section.buttons.val = {
    dashboard.button("e", "  Nvim Tree", ":NvimTreeToggle<CR>"),
    dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
    dashboard.button("f", "󰍉  Find File", ":Telescope find_files<CR>"),
    dashboard.button("fw", "󰉿  Find Words", ":Telescope live_grep<CR>"),
    dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
    dashboard.button("q", "󰗼  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = { "🚀 Welcome back, Muhammadjon!" }

alpha.setup(dashboard.opts)
