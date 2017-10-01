"
" native.vim
"
" Contains keymappings and settings for features that come with neovim by default
"

" Use comma as leader key
let mapleader=","

" Use space as command key
noremap <space> :

" fd is escape
inoremap fd <esc>

" 2-space tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Show line numbers
set number

" Show last command in bottom-right
set showcmd

" Highlight current line
set cursorline

" Filetype-specific indent files
filetype indent on

" Visual command autocomplete
set wildmenu

" Don't redraw unless we need to
set lazyredraw

" Highlight matching braces
set showmatch

" Clear search results with C-s
nnoremap <C-s> :nohlsearch<CR>

" Enabled folding
set foldenable
set foldlevelstart=10 " if set to 0, everything will be closed by default
set foldnestmax=10
set foldmethod=indent

" More natural split opening
set splitbelow
set splitright
nnoremap <C-w>v :vsp<CR>
nnoremap <C-w>h :sp<CR>

" Escape in terminal mode
tnoremap <Esc> <C-\><C-n>

source $HOME/.config/nvim/custom_functions/strip_trailing_whitespace.vim
