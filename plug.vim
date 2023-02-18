if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
  " GIT
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  " File Structure
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " VIM Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

  if has("nvim")
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Language Support
    Plug 'neoclide/coc.nvim' , { 'branch': 'release'}

    " Dart
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'thosakwe/vim-flutter'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'natebosch/dartlang-snippets'

    " Theme
    Plug 'morhetz/gruvbox'
  endif
  Plug 'windwp/nvim-autopairs'
call plug#end()
