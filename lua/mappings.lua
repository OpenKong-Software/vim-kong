vim.g.mapleader = " "
vim.g.maplocalleader = " "

local mappings = {
	{ "n", "<C-s>", ":w<cr>" },
	{ "n", "<leader>e", "<cmd>Neotree toggle<cr>" }
}

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

for _, maps in pairs(mappings) do
    map(unpack(maps))
end
