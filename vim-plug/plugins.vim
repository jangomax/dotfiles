call plug#begin('C:\Users\jangomax\AppData\Local\nvim\autoload\plugged')

" IDE
    " Better Syntax Support 
    Plug 'sheerun/vim-polyglot'
    " Statusline
    Plug 'nvim-lualine/lualine.nvim'
    " Bufferline
    Plug 'akinsho/bufferline.nvim'
    " LSP 
    Plug 'neovim/nvim-lspconfig' 
    " Auto-install lsp servers (?)  
    Plug 'williamboman/nvim-lsp-installer'
    " Autocomplete
    Plug 'hrsh7th/nvim-compe'
    " Startify
    Plug 'mhinz/vim-startify'
    " Snippets
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    " Friendly Snippets
    Plug 'rafamadriz/friendly-snippets'
    " Autocomment 
    Plug 'preservim/nerdcommenter'   
    " Improved Autopair 
    Plug 'cohama/lexima.vim' 
    " Close tab
    Plug 'mhinz/vim-sayonara'
    " Neovim-qt GUI Shim 
    Plug 'equalsraf/neovim-gui-shim'
    " Hex colors highlighter
    Plug 'norcalli/nvim-colorizer.lua'
    " Indentation Levels
    Plug 'lukas-reineke/indent-blankline.nvim'
    " LspSaga LSP ui extension
    Plug 'glepnir/lspsaga.nvim'
    " Lazygit
    Plug 'kdheepak/lazygit.nvim'

" File Structure
    " Nvim-Tree
    Plug 'kyazdani42/nvim-tree.lua'

    " Telescope 
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'BurntSushi/ripgrep'

    " Find Project Root
    Plug 'airblade/vim-rooter'

" Theme   
    "Material
    Plug 'ishan9299/nvim-solarized-lua'
    " Dev Icons
    Plug 'ryanoasis/vim-devicons'
    " Web Dev Icons
    Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
