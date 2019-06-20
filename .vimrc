call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'elmcast/elm-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:lightline = { 'colorscheme': 'solarized'}
let g:lightline = {
      \   'component_function': {
      \     'filename': 'LightLineFilename'
      \   },
      \   'colorscheme': 'solarized'
      \ }
function! LightLineFilename()
  return expand('%')
endfunction

noremap <C-p> :Files<cr>

set number
set ignorecase
set showmatch
set noswapfile
set nobackup
set mouse=a

