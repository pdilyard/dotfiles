call plug#begin('~/.local/share/nvim/plugged')

" Colorscheme
Plug 'tomasr/molokai'

" Visual undo tree
Plug 'sjl/gundo.vim'

" Fuzzy search
Plug 'kien/ctrlp.vim'

" Automatic syntax highlighting
Plug 'sheerun/vim-polyglot'

" Flow syntax highlighting
Plug 'flowtype/vim-flow'

" ALE
Plug 'w0rp/ale'

call plug#end()

" Use comma as leader key
let mapleader=","

" fd is escape
inoremap fd <esc>

" Use molokai
colorscheme molokai

" 2-space tabs because I am sane
set tabstop=2
set softtabstop=2
set expandtab

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

" Search as characters are typed
set incsearch

" Highlight search results
set hlsearch

" Clear search results with SPC s c
nnoremap <space>sc :nohlsearch<CR>

" Enabled folding
set foldenable
set foldlevelstart=10 " if set to 0, everything will be closed by default
set foldnestmax=10
set foldmethod=indent

" gundo
nnoremap <leader>u :GundoToggle<CR>

" ctrlp
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = {
\  'jsx': ['flow']
\}
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
