execute pathogen#infect()
set nocompatible

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on
syntax on
syntax enable

" Theme
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" To swtich between dark and solarized light
call togglebg#map("<F8>")

set number
set showcmd
set cursorline
set ruler
set shiftwidth=2
" Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

" Set tabs
set tabstop=2
set softtabstop=2
set expandtab

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Invisibles and EOLs
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set foldenable
nnoremap <space> za

inoremap jj <esc>

set mouse=a
let g:NERDTreeMouseMode=3
map <F2> :NERDTreeToggle<CR>


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
