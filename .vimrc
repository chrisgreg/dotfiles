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
Plug 'arzg/vim-substrata'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-mix-format'
Plug 'tpope/vim-projectionist'
Plug 'c-brenn/fuzzy-projectionist.vim'
Plug 'andyl/vim-projectionist-elixir'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdtree'
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'rakr/vim-two-firewatch'
Plug 'whatyouhide/vim-gotham'
Plug 'megantiu/true.vim'
Plug 'jordwalke/vim-taste'
Plug 'alvan/vim-closetag'
Plug 'relastle/bluewery.vim'
Plug 'mxw/vim-jsx'

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

" Colour Scheme
syntax enable
"set background=dark
" colorscheme substrata
      
" enable 24bit true color
 if (has("termguicolors"))
   set termguicolors
 endif

" for pairing
set background=dark
set bg=dark
" colorscheme PaperColor
" colorscheme gotham256
" colorscheme true
" colorscheme taste

 colorscheme bluewery
let g:lightline = { 'colorscheme': 'bluewery' }

noremap <C-p> :Files<cr>

" Highlight search terms
set hlsearch

set number
set ignorecase
set showmatch
set noswapfile
set nobackup
set mouse=a
set updatetime=100
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%*
set expandtab
set shiftwidth=2
set softtabstop=2
set autowrite
set autoread
set incsearch
set nocompatible
set ttyfast


" Infinite Undo
silent !mkdir -p ~/.vim/undo
set undofile
set undodir=~/.vim/undo
let s:undos = split(globpath(&undodir, '*'), "\n")
call filter(s:undos, 'getftime(v:val) < localtime() - (60 * 60 * 24 * 90)')
call map(s:undos, 'delete(v:val)')

" Elixir settings
let g:mix_format_on_save=1

" Nerd tree map to Ctrl+t
map <C-t> :NERDTreeToggle<CR>

nmap <Space> :Rg 

imap  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

:iabbrev <// </<C-X><C-O>

