-- Display open Buffers
return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('bufferline').setup {
            options = {
                mode = 'buffers',
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'File Tree',
                        highlight = 'Directory',
                        separator = true,
                    }
                },
                always_show_bufferline = false -- When buffer (amount <= 1) -> hide bufferline
            }
        }
    end
}
