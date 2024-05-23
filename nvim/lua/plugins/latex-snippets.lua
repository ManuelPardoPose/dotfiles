-- Latex Snippets
return {
    "iurimateus/luasnip-latex-snippets.nvim",
    dependencies = {
        "L3MON4D3/LuaSnip",
        "lervag/vimtex"
    },
    init = function()
        require'luasnip-latex-snippets'.setup()
        require("luasnip").config.setup { enable_autosnippets = true }
    end
}
