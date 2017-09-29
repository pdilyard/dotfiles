call plug#begin('~/.local/share/nvim/plugged')

Plug 'Raimondi/delimitMate' " Auto-complete quotes, parens, etc.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto-completion
Plug 'christoomey/vim-tmux-navigator' " Navigate vim and tmux panes the same way
Plug 'easymotion/vim-easymotion' " Jump to characters
Plug 'haya14busa/incsearch.vim' " Improved searching
Plug 'jeetsukumaran/vim-buffergator' " Explore buffers more easily
Plug 'kien/ctrlp.vim' " Fuzzy file search
Plug 'mattn/emmet-vim' " emmet HTML editing
Plug 'maxbrunsfeld/vim-yankstack' " Cycle through yanked items
Plug 'mileszs/ack.vim' " Search across files
Plug 'scrooloose/nerdcommenter' " Automatically comment lines
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'sheerun/vim-polyglot' " Automatic syntax highlighting
Plug 'sjl/gundo.vim' " Visual undo tree
Plug 'slashmili/alchemist.vim' " Elixir support
Plug 'styled-components/vim-styled-components' " Styled-components highlighting
Plug 'terryma/vim-expand-region' " Expand visually selected region
Plug 'tomasr/molokai' " Colorscheme
Plug 'tpope/tpope-vim-abolish' " Abbreviation, Substitution, Coercion
Plug 'tpope/vim-endwise' " Auto-insert do/end
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-repeat' " Use . for more complex commands
Plug 'tpope/vim-surround' " Surrounding things in characters
Plug 'tpope/vim-unimpaired' " Simple mappings for transforming text
Plug 'vim-airline/vim-airline' " 'powerline'-like status bar
Plug 'wellle/targets.vim' " More text objects to operate on (edit next parens)

call plug#end()

"
" Vim settings
"

" Use comma as leader key
let mapleader=","

" Use space as command key
noremap <space> :

" fd is escape
inoremap fd <esc>

" Set color scheme
colorscheme molokai

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

" Clear search results with C-/
nnoremap <C-s> :nohlsearch<CR>

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

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

"
" Strip trailing whitespace
"
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre *.py,*.js,*.jsx,*.ex,*.exs,*.vim,*.html :call <SID>StripTrailingWhitespaces()
autocmd BufEnter *.py,*.js,*.jsx,*.ex,*.exs,*.vim,*.html :highlight ExtraWhitespace ctermbg=238 guibg=238
autocmd BufEnter *.py,*.js,*.jsx,*.ex,*.exs,*.vim,*.html :match ExtraWhitespace /\s\+$/

" Escape in terminal mode
tnoremap <Esc> <C-\><C-n>

"
" Plugin-specific configuration
"

"
" ctrlp
"
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"
" gundo
"
nnoremap <leader>u :GundoToggle<CR>

"
" NERDCommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"
" Emmet
"
let g:user_emmet_install_global = 0
autocmd FileType javascript.jsx,html,css EmmetInstall

"
" Ack
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"
" Yankstack
"
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"
" Incsearch
"
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch

"
" Deoplete
"
let g:deoplete#enable_at_startup = 1

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"
" Syntax configuration
"
let g:javascript_plugin_flow = 1
