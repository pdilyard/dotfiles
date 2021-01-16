" ==================
" Plugins (vim-plug)
" ==================
call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter' " Shows a diff in the gutter
Plug 'christoomey/vim-tmux-navigator' " Navigate vim and tmux panes the same way
Plug 'editorconfig/editorconfig-vim' " Shared editor configuration for teams in .editorconfig
Plug 'haya14busa/incsearch.vim' " Improved searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'justinmk/vim-sneak' " Jump around with s{char}{char}
Plug 'kareeeeem/python-docstring-comments' " Highlight Python docstrings as comments
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting
Plug 'martinda/jenkinsfile-vim-syntax' " Highlight Jenkinsfile
Plug 'maxbrunsfeld/vim-yankstack' " Cycle through yanked items
Plug 'mileszs/ack.vim' " Search across files
Plug 'peitalin/vim-jsx-typescript' " TSX React typescript files
Plug 'raimondi/delimitmate' " Auto-complete quotes, parens, etc.
Plug 'scrooloose/nerdcommenter' " Automatically comment lines
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'terryma/vim-expand-region' " Expand visually selected region
Plug 'tomasr/molokai' " Colorscheme
Plug 'tpope/tpope-vim-abolish' " Abbreviation, Substitution, Coercion
Plug 'tpope/vim-endwise' " Auto-insert do/end
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-rails' " Ruby on Rails support
Plug 'tpope/vim-rbenv' " rbenv support
Plug 'tpope/vim-repeat' " Use . for more complex commands
Plug 'tpope/vim-surround' " Surrounding things in characters
Plug 'tpope/vim-unimpaired' " Simple mappings for transforming text
Plug 'vim-ruby/vim-ruby' " Ruby lang support
Plug 'wellle/targets.vim' " More text objects to operate on (edit next parens)

call plug#end()


" =================
" Built-in settings
" =================

" Configure python with pyenv
let g:python3_host_prog = $HOME . "/.pyenv/versions/3.9.1/bin/python"

" Use space as leader key
let mapleader="\<Space>"

" Helps when using a fast terminal
set ttyfast

" Quickly go to prev buffer
nnoremap <Leader><TAB> <C-^>

" Use jj to escape insert mode quickly
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

" More natural split opening, similar to tmux setting
set splitbelow
set splitright
nnoremap <C-w>v :vsp<CR>
nnoremap <C-w>h :sp<CR>

" Easy split resizing, similar to tmux setting
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

" Copy to system clipboard using leader+yank
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


" ====================
" Plugin configuration
" ====================

" airblade/vim-gitgutter
nnoremap <Leader>gp <Plug>GitGutterPreviewHunk
nnoremap <Leader>gr <Plug>GitGutterUndoHunk
nnoremap <Leader>gu <Plug>GitGutterUndoHunk
nnoremap <Leader>gs <Plug>GitGutterStageHunk

" haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch

" junegunn/fzf.vim
nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>

" justinmk/vim-sneak
let g:sneak#label = 1
nmap , <Plug>Sneak_s
nmap < <Plug>Sneak_S
xmap , <Plug>Sneak_s
xmap < <Plug>Sneak_S
omap , <Plug>Sneak_s
omap < <Plug>Sneak_S
map ' <Plug>Sneak_;
map ; <Plug>Sneak_,
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
nmap , <Plug>SneakLabel_s
nmap < <Plug>SneakLabel_S

" maxbrunsfeld/vim-yankstack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

" shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" tomasr/molokai
colorscheme molokai
