return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night", -- storm, moon, night, day
            transparent = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                sidebars = "transparent",
            },
        })
        vim.cmd("colorscheme tokyonight")
    end,
}
