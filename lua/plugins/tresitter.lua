return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- Try to load the module, but don't crash if it's missing
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      
      -- If the plugin isn't found, stop here (prevents the error screen)
      if not status_ok then
        return
      end

      -- If found, proceed with setup
      configs.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
      })
    end
  }
}
