call plug#begin()
Plug 'github/copilot.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'wfxr/minimap.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
call plug#end()

colorscheme palenight
" Remap jk to <esc>
nmap jk <esc>
imap jk <esc>
vmap jk <esc>
omap jk <esc>

set tags+=~/Documents/AssessFirst/prototypes/demo-sourcing/emeric/patrick/python/patrick/core/tags

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
let g:vimtex_view_method = 'zathura' 

" NerdTree
nmap <F6> :NERDTreeToggle<CR>

" Minimap 
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1

" markdown previewer
nmap PR :MarkdownPreview<CR>
nmap PC :MarkdownPreviewStop<CR>

