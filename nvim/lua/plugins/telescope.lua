-- Telescope
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Find File" })
        vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = "Recent Files" })
        vim.keymap.set('n', '<leader>st', builtin.live_grep, { desc = "Text" })
        vim.keymap.set('n', '<leader>sM', builtin.man_pages, { desc = "Man Pages" })
    end
}
