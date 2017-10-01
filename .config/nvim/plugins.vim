"
" plugins.vim
"
" Configuration for installed plugins.
"

"
" ------------------
" Shougo/denite.nvim
" ------------------
"

" Open a fuzzy finder with C-p
nnoremap <C-p> :Denite buffer file_rec<CR>

"
" --------------------
" Shougo/deoplete.nvim
" --------------------
"
let g:deoplete#enable_at_startup = 1

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

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
" ---------------
" mattn/emmet-vim
" ---------------
"
let g:user_emmet_install_global = 0
autocmd FileType javascript.jsx,html,css EmmetInstall

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
" sheerun/vim-polyglot
" --------------------
"
let g:javascript_plugin_flow = 1

"
" -------------
" sjl/gundo.vim
" -------------
"
nnoremap <leader>u :GundoToggle<CR>

"
" --------------
" tomasr/molokai
" --------------
"
colorscheme molokai
