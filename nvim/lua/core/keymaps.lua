local map = require("helpers.keys").map

map("n", "K", vim.lsp.buf.hover, "Lsp Buf Hover")
map("n", "gd", vim.lsp.buf.definition, "Lsp Buf Definition")
map("n", "grn", vim.lsp.buf.rename, "Lsp Buf Rename")
map("n", "gra", vim.lsp.buf.code_action, "Lsp Buf Code Action")
map("n", "grr", vim.lsp.buf.references, "Lsp Buf References")

-- Quick access to some common actions
map("n", "<leader>ww", "<cmd>w<cr>", "Write")
map("n", "<leader>wa", "<cmd>wa<cr>", "Write all")
map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")

-- Closing buffers
map("n", "<leader>c", ":bdelete<CR>", "Close Buffer")

-- Navigate buffers
map("n", "<leader>bb", ":bprevious<CR>", "Previous Buffer")
map("n", "<leader>bn", ":bnext<CR>", "Next Buffer")

-- Switch between light and dark modes
map("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Toggle between light and dark themes")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

-- Show quick fix
map("n", "<leader>lq", vim.diagnostic.setloclist, "Quickfix")

-- Drag line up and down
map("v", "K", ":m '<-2<CR>gv=gv", "move line up")
map("v", "J", ":m '>+1<CR>gv=gv", "move line down")

-- Execute "make"
map("n", "<leader>mk", "<cmd>!make<cr>", "make")

-- Toggle Markdown Preview
map("n", "<leader>md", "<cmd>MarkdownPreviewToggle<cr>", "MarkdownPreviewToggle")
