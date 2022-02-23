syntax on
color molokai

" Set transparent background
hi Normal guibg=NONE ctermbg=NONE

" Different match cursor color
hi MatchParen guifg=yellow guibg=black

call plug#begin()
Plug 'hrsh7th/nvim-compe'
Plug 'flazz/vim-colorschemes'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Treesiter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Lsp ts utils dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Powerline in lua
Plug 'hoob3rt/lualine.nvim'

" Icons package
Plug 'ryanoasis/vim-devicons'

" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-compe'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'xabikos/vscode-javascript'
Plug 'skyran1278/js-jsx-snippets'

" Split/Join one liners
Plug 'AndrewRadev/splitjoin.vim'

" Add more text objects like [], {}, etc.
Plug 'wellle/targets.vim'

" Surrounding utils
Plug 'tpope/vim-surround'

" JSX
Plug 'chemzqm/vim-jsx-improve'

" Comments
Plug 'tpope/vim-commentary'

" Undo tree
Plug 'mbbill/undotree'

" JSX
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Formatting
Plug 'Chiel92/vim-autoformat'

" NerdTree
Plug 'preservim/nerdtree'

" JSX syntax
Plug 'chemzqm/vim-jsx-improve'

" CSVs
"Plug 'chrisbra/csv.vim'

"Harpoon
Plug 'ThePrimeagen/harpoon'

" Fugitive
Plug 'tpope/vim-fugitive'

" Lightspeed
Plug 'ggandor/lightspeed.nvim'
call plug#end()

lua require("lsp-config")
lua require("compe-config")
lua require("lualine-config")
lua require("treesitter-config")
lua require("treesitter-playground-config")
lua require("telescope-config")
lua require("harpoon-config")
