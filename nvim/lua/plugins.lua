return {
	-- catppuccin theme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = {transparent_background = true} },
	
    -- autopairs for brackets, braces etc.
    { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
	
    -- file tree/explorer
    { "nvim-tree/nvim-tree.lua", opts = { on_attach = on_attach_change } },
    
    -- markdown preview
    { "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end, }
}
