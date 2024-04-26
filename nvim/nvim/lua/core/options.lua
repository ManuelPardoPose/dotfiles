local opts = {
    -- line numbers
    nu = true,
    rnu = true,

    -- tabs
    tabstop = 4,
    softtabstop = 4,
    expandtab = true,

    -- auto indent
    smartindent = true,
    shiftwidth = 4,

    -- smart indent
    breakindent = true,

    -- disable text wrap
    wrap = false,

    signcolumn = "yes",

    -- system clipboard
    clipboard = "unnamed,unnamedplus",

    -- enables highlighting of cursor line
    cursorline = true,

    -- restrict scrolloff spacing
    scrolloff = 10,

    colorcolumn = "80",
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- things that have no bool or int as val
    -- replace tilde sign on new lines with " "
vim.opt.fillchars = {eob = " "}
