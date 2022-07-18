call plug#begin('C:\Users\jangomax\AppData\Local\nvim\autoload\plugged')

    " Better Syntax Support 
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    " Theme   
    Plug 'lifepillar/vim-solarized8'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Dev Icons
    Plug 'ryanoasis/vim-devicons'
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
    " Nvim-Tree
    Plug 'kyazdani42/nvim-tree.lua'
    " LspSaga LSP ui extension
    Plug 'glepnir/lspsaga.nvim'
    " Lazygit
    Plug 'kdheepak/lazygit.nvim'
call plug#end()

