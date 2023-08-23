------------------------------------------plugins---------------------------------------------------

lvim.plugins = {

  {"ellisonleao/gruvbox.nvim"},
  {"ThePrimeagen/harpoon"}
}

----------------------------------------colorscheme-------------------------------------------------
lvim.colorscheme = "gruvbox";

-------------------------------------------mapping--------------------------------------------------

--harpoon keymap
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)


--just adding function to make it easyer for you
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end
--add ur mapping here !
map("i", "jj", "<Esc>", { desc = "go to normal mode faster"})




