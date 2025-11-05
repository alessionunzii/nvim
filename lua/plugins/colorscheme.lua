-- Add this to your lazy.nvim plugins configuration
-- Usually in ~/.config/nvim/lua/plugins/colorscheme.lua
-- or in your main lazy setup file

return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Load colorscheme before other plugins
  config = function()
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "soft", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    })
    
    -- Set the colorscheme
    vim.cmd("colorscheme gruvbox")
  end,
}
