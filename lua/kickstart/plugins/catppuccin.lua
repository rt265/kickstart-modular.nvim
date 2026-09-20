-- [[ Colorscheme ]]
-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command under that to load whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }
---@diagnostic disable-next-line: missing-fields
require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
})
-- Load the colorscheme here.
vim.cmd.colorscheme 'catppuccin-nvim'

-- vim: ts=2 sts=2 sw=2 et
