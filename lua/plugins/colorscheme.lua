return {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_background = 'hard' -- soft, medium, hard
        vim.g.gruvbox_material_transparent_background = 1
        vim.g.gruvbox_material_enable_italic = 1
        vim.cmd("colorscheme gruvbox-material")
    end,
}