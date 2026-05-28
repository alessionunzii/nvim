return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, _)
        hl.LineNr = { bg = "NONE" }
        hl.LineNrAbove = { bg = "NONE" }
        hl.LineNrBelow = { bg = "NONE" }
        hl.SignColumn = { bg = "NONE" }
        hl.FoldColumn = { bg = "NONE" }
      end,
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
