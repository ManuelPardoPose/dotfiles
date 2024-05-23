-- Key Suggestions and Descriptions
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        window = {
            border = "single", -- none, single, double, shadow
            position = "bottom", -- bottom, top
            margin = { 2, 2, 2, 2 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
            padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
            winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
            zindex = 1000, -- positive value to position WhichKey above other floating windows.
        },
        layout = {
            height = { min = 1, max = 25 }, -- min and max height of the columns
            width = { min = 1, max = 50 }, -- min and max width of the columns
            spacing = 2, -- spacing between columns
            align = "center", -- align columns left, center or right
        },
    }
}
