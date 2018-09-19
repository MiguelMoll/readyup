call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins','for': 'go'}
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go'}
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'vim-syntastic/syntastic', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

call plug#end()

set nocompatible
syntax on
colorscheme monokai
"set t_Co=256
set termguicolors
set cursorline
set mouse=a
set ignorecase
set autoread
set incsearch
set hlsearch
set nofoldenable
set noswapfile
set number
set relativenumber
set completeopt-=preview
set clipboard+=unnamedplus
set wildignore+=*/.git/*

let mapleader = "\<Space>"
nnoremap <Leader><Space> :w<CR>
nnoremap <Leader>q :x<CR>
nnoremap <Leader>a :wa<CR>

" Toggle line numbers.
nnoremap <F3> :set nonumber!<CR>

" Back to the last active buffer
nnoremap <BS> :b#<CR>
nnoremap <Leader>1 :buffer 1<CR>
nnoremap <Leader>2 :buffer 2<CR>
nnoremap <Leader>3 :buffer 3<CR>
nnoremap <Leader>4 :buffer 4<CR>
nnoremap <Leader>5 :buffer 5<CR>
nnoremap <Leader>6 :buffer 6<CR>
nnoremap <Leader>7 :buffer 7<CR>
nnoremap <Leader>8 :buffer 8<CR>
nnoremap <Leader>9 :buffer 9<CR>

" Splits
" Using backslash since it's the same key as the pipe character.
" Associate pipe with vertical split; minus with horizontal split.
set splitright
set splitbelow
nmap <Leader>\ :vnew<CR>
nmap <Leader>- :new<CR>

" Map omnifunc to Ctrl-Space
inoremap <C-Space> <c-x><c-o>

" Easier split navigation
nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Clear search results.
noremap <silent> <leader>, :noh<cr>:call clearmatches()<cr>

" Save when losing focus
au BufLeave * wa

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#source_importer = 1

" NERDTree
map <F2> :NERDTreeToggle<CR>

" Ctrl P
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_user_command = 'rg %s --files --glob ""'
let g:ctrlp_use_caching = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts=1
let g:airline_theme="powerlineish"

" vim-go
au FileType go nmap <Leader>i <Plug>(go-implements)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>d <Plug>(go-def)
au FileType go nmap <leader>e :GoErrCheck<CR>
au FileType go nmap <leader>b :GoBuild<CR>
au FileType go nmap <leader>t :GoTestFunc<CR>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" rust
let g:rustfmt_autosave = 1
au FileType rust nmap <leader>d <Plug>(rust-def)
au FileType rust nmap <leader>r :RustRun<CR>
