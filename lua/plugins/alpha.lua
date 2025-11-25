return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local dashboard = require("alpha.themes.dashboard")
      
      -- Custom ASCII art
      dashboard.section.header.val = {
      "   ⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⠀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "  ⠀⠀⠀⠀⠀⣸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⣠⣿⣿⡇⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡇⠀⠀⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀⠀⠀",
      " ⠀ ⠀⠀⣸⣿⣿⣿⣿⣇⣀⣀⠀⢠⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀",
      "⠀⠀⢀⣿⣿⠋⠁⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀",
      "⣀⣀⠘⣿⣧⠀⠀⡾⢸⣿⣿⣿⡟⢁⠀⠈⢻⣿⣿⡇⠀⠀⠀⠀⠀⠀",
      "⠈⣉⡁⠻⣿⣷⣦⣤⣾⣿⣿⣯⡀⠿⠀⠀⣸⣿⣿⠇⠀⠀⠀⠀⠀⠀",
      "⠉⠉⠁⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠛⠛⠛⠋⠁⣀⠈⠛⠆⠀⠀⠀⠀⠀ ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠃⠀⠀⠀⠀⠀⠀⠀",
    }
    require("alpha").setup(dashboard.config)
    end,
}
