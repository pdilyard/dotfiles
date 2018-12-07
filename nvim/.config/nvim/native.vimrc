"
" native.vim
"
" Contains keymappings and settings for features that come with neovim by default
"

" Configure python with pyenv
let g:python3_host_prog = '/home/pdilyard/.pyenv/versions/3.7.1/bin/python'

" Use space as leader key
let mapleader="\<Space>"

" Use semicolon as command key
noremap ; :

" Set ttyfast
set ttyfast

" Quickly go to prev buffer
nnoremap <Leader><TAB> <C-^>

" Source config
nnoremap ced :e ~/.config/nvim/
nnoremap csv :so ~/.config/nvim/init.vim<CR>

" fd is escape
inoremap jj <esc>

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
set relativenumber

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

" Easy split resizing
nnoremap <C-up> <C-W>+
nnoremap <C-down> <C-W>-
nnoremap <C-left> <C-W><
nnoremap <C-right> <C-W>>

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

" Open up file explorer
nnoremap <C-f> :Explore<CR>

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

" Insert lines above/below in normal mode
nnoremap <Leader>k O<Esc>j
nnoremap <Leader>j o<Esc>k

" Insert spaces left/right in normal mode
nnoremap <Leader>h  i<space><Esc>l
nnoremap <Leader>l a<space><Esc>h

" Run a shell command with !
nnoremap ! :!

