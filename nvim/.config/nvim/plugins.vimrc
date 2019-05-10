"
" plugins.vim
"
" Configuration for installed plugins.
"

"
" ------------------------
" vim-python/python-syntax
" ------------------------
"
let g:python_highlight_all = 1

"
" ----------------------
" airblade/vim-gitgutter
" ----------------------
"
nnoremap <Leader>gp <Plug>GitGutterPreviewHunk
nnoremap <Leader>gr <Plug>GitGutterUndoHunk
nnoremap <Leader>gu <Plug>GitGutterUndoHunk
nnoremap <Leader>gs <Plug>GitGutterStageHunk

"
" ------------------------
" haya14busa/incsearch.vim
" ------------------------
"
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch

"
" ----------------
" junegunn/fzf.vim
" ----------------
"
nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>


"
" ------------------
" justinmk/vim-sneak
" ------------------
"
let g:sneak#label = 1
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
xmap s <Plug>Sneak_s
xmap S <Plug>Sneak_S
omap s <Plug>Sneak_s
omap S <Plug>Sneak_S
map ; <Plug>Sneak_;
map , <Plug>Sneak_,
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
nmap s <Plug>SneakLabel_s
nmap S <Plug>SneakLabel_S

"
" ----------------------------
" ludovicchabant/vim-gutentags
" ----------------------------
"
set statusline+=%{gutentags#statusline()}
let g:gutentags_project_root = ['Makefile']
let g:gutentags_cache_dir = '~/.gutentags'

"
" --------------------------
" maxbrunsfeld/vim-yankstack
" --------------------------
"
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"
" ---------------
" mileszs/ack.vim
" ---------------
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"
" ------------------------
" scrooloose/nerdcommenter
" ------------------------
"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"
" -------------------
" scrooloose/nerdtree
" -------------------
"

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

"
" --------------------
" shougo/deoplete.nvim
" --------------------
"
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"
" --------------
" tomasr/molokai
" --------------
"
colorscheme molokai
