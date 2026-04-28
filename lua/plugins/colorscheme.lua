return {
  "rebelot/kanagawa.nvim",
  priority = 1000, -- Load colorscheme before other plugins
  config = function()
    require("kanagawa").setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = false },
      functionStyle = { italic = false},
      keywordStyle = { italic = false},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,         -- do not set background color
      dimInactive = false,         -- dim inactive window :h hl-NormalNC
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {
          LineNr = {bg = "NONE"};
          LineNrAbove = {bg = "NONE"};
          LineNrBelow = {bg = "NONE"};
          SignColumn = {bg = "NONE"};
          FoldColumn = {bg = "NONE"};
        }
      end,
      theme = "dragon",              -- Load "wave" theme when 'background' option is not set
      background = {               -- map the value of 'background' option to a theme
        dark = "dragon",             -- try "dragon" !
        light = "dragon"
      },
    })
    -- Set the colorscheme
    vim.cmd("colorscheme kanagawa")
  end,
}
