local install_path = vim.fn.stdpath('data') .. '~/.local/share/nvim/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute(
    '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path
  )
end

vim.cmd [[
augroup Packer
  autocmd!
  autocmd BufWritePost init.lua PackerCompile
augroup end
]]

use = require("packer").use
require("packer").startup(function()
  use 'neovim/nvim-lspconfig'

  use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig',
  }

  use 'onsails/lspkind-nvim'
  use {'tami5/lspsaga.nvim', requires = {'neovim/nvim-lspconfig'}}
end)
