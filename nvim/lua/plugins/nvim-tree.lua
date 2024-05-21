-- This is the nvim-tree plugin and config
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            renderer = {
                add_trailing = false,
                group_empty = false,
                full_name = false,
                indent_width = 2,
                special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", ".gitignore" },
                symlink_destination = true,
                highlight_git = "none",
                highlight_diagnostics = "none",
                highlight_opened_files = "none",
                highlight_modified = "none",
                highlight_bookmarks = "none",
                highlight_clipboard = "name",
                indent_markers = {
                    enable = true,
                    inline_arrows = true,
                    icons = {
                        corner = "└",
                        edge = "│",
                        item = "│",
                        bottom = "─",
                        none = " ",
                    },
                },
                icons = {
                    web_devicons = {
                        file = {
                            enable = true,
                            color = true,
                        },
                        folder = {
                            enable = false,
                            color = true,
                        },
                    },
                    git_placement = "before",
                    modified_placement = "after",
                    diagnostics_placement = "signcolumn",
                    bookmarks_placement = "signcolumn",
                    padding = " ",
                    symlink_arrow = " ➛ ",
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                        modified = true,
                        diagnostics = true,
                        bookmarks = true,
                    },
                    glyphs = {
                        default = "",
                        symlink = "",
                        -- bookmark = "🔖",
                        modified = "●",
                        folder = {
                            -- arrow_closed = "→",
                            -- arrow_open = "↓",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                        git = {
                            -- unstaged = "✗",
                            -- staged = "✓",
                            -- unmerged = "⛙",
                            -- renamed = "",
                            -- untracked = "★",
                            -- deleted = "␡",
                            -- ignored = "◌",
                        },
                    },
                },
            },
        }
        vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })
    end,
}
