call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'jdhao/better-escape.vim'
call plug#end()

colorscheme palenight
" Remap jk to <esc>
let g:better_escape_shortcut = 'jk'

"Launch python from vim
nnoremap py :w \| !python3 %<CR>

" cursor line
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" switch between buffer 
map <C-k> :bprev<CR>
map <C-j> :bnext<CR>

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

" Highlight search results
set hlsearch
set incsearch

" auto + smart indent for code
set autoindent
set smartindent

" Mouse support
set mouse=a

" set terminal size
set splitbelow
set termwinsize=10x0 " 'termsize'
nmap <F5> :terminal<CR>


" disable backup files
set nobackup
set nowritebackup

" no delays!
set updatetime=300

set cmdheight=1
set shortmess+=c

set signcolumn=yes

set clipboard=unnamed

 " Vim wiki
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '~/Documents/Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let mapleader = ","
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_customwiki2html=$HOME.'/.vim/autoload/vimwiki/customwiki2html.sh'

command! -nargs=+ Silent
			\   execute 'silent ! <args>'
			\ | redraw!

set noswapfile

" Vimtex plugin
syntax enable
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method = 'sioyek' 
let g:vimtex_view_sioyek_exe = '/Applications/sioyek.app/Contents/MacOS/sioyek'

" NerdTree
nmap <F6> :NERDTreeToggle<CR>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
