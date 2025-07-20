return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({ 
                -- Varianti disponibili: "storm", "moon", "night", "day"
                style = "night",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    sidebars = "transparent",
                    floats = "transparent",
                },
                sidebars = { "qf", "help", "terminal", "packer" },
                day_brightness = 0.3,
                hide_inactive_statusline = false,
                dim_inactive = false,
                lualine_bold = false,
                on_colors = function(colors)
                    -- Personalizza i colori se necessario
                end,
                on_highlights = function(highlights, colors)
                    -- Personalizza gli highlight se necessario
                end,
            })
            vim.cmd("colorscheme tokyonight")
            -- Transparency
            vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
        end
    }
}