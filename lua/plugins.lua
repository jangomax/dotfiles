local status, packer = pcall(require, 'packer')

if (not status) then
	return
end

vim.cmd[[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  --use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'
  use 'nvim-lualine/lualine.nvim'
  use { 'akinsho/bufferline.nvim', run = ':TSUpdate' }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'preservim/nerdcommenter'
  use 'mhinz/vim-sayonara'
  use 'norcalli/nvim-colorizer.lua'
  use 'cohama/lexima.vim'
  use 'kdheepak/lazygit.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind.nvim'
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
  }
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
 use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-telescope/telescope.nvim',
    requires  = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep'
    }
  }
  use 'airblade/vim-rooter'
  use 'ishan9299/nvim-solarized-lua'
end)
