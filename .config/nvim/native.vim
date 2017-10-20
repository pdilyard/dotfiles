"
" native.vim
"
" Contains keymappings and settings for features that come with neovim by default
"

" Set ttyfast
set ttyfast

" Source config
nnoremap ced :e ~/.config/nvim/
nnoremap csv :so ~/.config/nvim/init.vim<CR>

" Use space as leader key
let mapleader="\<Space>"

" Use semicolon as command key
noremap ; :

" fd is escape
inoremap fd <esc>

" Save file with Leader w
nnoremap <silent><Leader>w :write<CR>
vnoremap <silent><Leader>w <Esc>:write<CR>

" Quit with Leader q
nnoremap <silent><Leader>q :q<CR>
vnoremap <silent><Leader>q <Esc>:q<CR>

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

" Strip trailing whitespace on save
source $HOME/.config/nvim/custom_functions/strip_trailing_whitespace.vim

" Use tab for indenting in visual and normal mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap <Tab> >>
nnoremap <S-Tab> <<

" Navigation in command line
cnoremap <C-j> <Left>
cnoremap <C-k> <Right>
cnoremap <C-h> <Home>
cnoremap <C-l> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-d> <C-w>

" Go to beginning of line with _
map _ ^

" Open up file explorer
nnoremap <C-f> :Explore<CR>
