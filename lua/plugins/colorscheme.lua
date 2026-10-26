return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false,
      transparent = true,
      terminalColors = true,
      dimInactive = false,
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      functionStyle = {},
      variableStyle = {},
      colors = {
        theme = {
          all = {
            ui = { bg_gutter = "none" }, -- transparent line numbers / sign column
          },
        },
      },
      overrides = function(_)
        return {
          LineNr = { bg = "NONE" },
          LineNrAbove = { bg = "NONE" },
          LineNrBelow = { bg = "NONE" },
          SignColumn = { bg = "NONE" },
          FoldColumn = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          FloatTitle = { bg = "NONE" },
        }
      end,
      theme = "wave", -- "wave" | "dragon" | "lotus"
      background = { dark = "wave", light = "lotus" },
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
