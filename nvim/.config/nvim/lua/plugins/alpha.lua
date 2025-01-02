return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣴⣾⠀⠀⠀⠀⠀
⠀    ⢀⣠⣴⣶⣶⣶⣾⣿⣿⣟⣹⣾⠇⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣶⣿⠿⠿⣿⣿⢿⡻⢿⡟⠿⠟⠁⠀⠀⠀⠀⠀⠀
⠀⠀⣰⡟⠁⠀⠀⣸⣿⣿⡿⠀⠀⠀⠀⠀⣀⡀⢀⡀⠀⠀⠀
⠀⢰⣿⡅⠀⠀⠀⣾⣿⣷⠁⠀⠀⠀⠀⢿⣿⣿⣮⣿⠂⠀⠀
⠀⢸⣿⣿⣄⠀⢠⣿⣿⠇⢠⣿⣿⣿⡄⠀⣿⣿⡏⠀⠀⠀⠀
⠀⠈⠛⠋⠀⠀⢸⣿⣿⠀⢾⣿⢩⣿⠇⠀⣿⣿⠏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⣿⣿⡀⠘⣿⣾⠏⠁⣰⣿⡟⠀⠀  ⠀
⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⡶⠟⢿⣶⣾⡿⠋⠀    ⠀
            ]]
    dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })
    dashboard.config.layout = {
      { type = "padding", val = 2 }, -- Top padding
      dashboard.section.header,
      { type = "padding", val = 1 }, -- Padding between header and buttons
      dashboard.section.buttons,
      dashboard.section.footer,
    }

    opts.layout = dashboard.layout
    opts.config = dashboard.config
  end,
}
