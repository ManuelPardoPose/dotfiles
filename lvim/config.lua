-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = false
        }
    },
    {
        "stevearc/dressing.nvim",
        config = function()
            require("dressing").setup({
                input = { enabled = false },
            })
        end,
    },
    {
        "nvim-neorg/neorg",
        ft = "norg", -- lazy-load on filetype
        config = true, -- run require("neorg").setup()
    },
    { "tpope/vim-commentary" },
    { "justinmk/vim-sneak" },

    -- markdown preview
    { "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end, },
}

-- line numbers
vim.opt.rnu = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- auto indent
vim.opt.smartindent = true
vim.opt.shiftwidth = 4

-- smart indent
vim.opt.breakindent = true

-- max line length marker
vim.opt.colorcolumn = "80"

lvim.colorscheme = "catppuccin"
