-- Add this to your lazy.nvim plugins configuration
-- Usually in ~/.config/nvim/lua/plugins/colorscheme.lua
-- or in your main lazy setup file
return {
  "rebelot/kanagawa.nvim",
  priority = 1000, -- Load colorscheme before other plugins
  config = function()
    require("kanagawa").setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,         -- do not set background color
      dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
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
        light = "lotus"
      },
    })
    
    -- Set the colorscheme
    vim.cmd("colorscheme kanagawa")
  end,
}
