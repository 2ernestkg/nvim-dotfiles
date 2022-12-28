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

  if has("nvim")
    " Language Support
    Plug 'neoclide/coc.nvim' , { 'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'

    " Dart
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'thosakwe/vim-flutter'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'natebosch/dartlang-snippets'

    " Theme
    Plug 'morhetz/gruvbox'
endif

call plug#end()
