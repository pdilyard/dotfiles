"
" plugins.vim
"
" Configuration for installed plugins.
"

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
" -------------------------
" easymotion/vim-easymotion
" -------------------------
"
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to character
nmap S <Plug>(easymotion-overwin-f)
" Jump to lines
nmap <Leader><Leader>j <Plug>(easymotion-j)
nmap <Leader><Leader>k <Plug>(easymotion-k)

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
" ---------------
" mattn/emmet-vim
" ---------------
"
let g:user_emmet_install_global = 0
autocmd FileType javascript.jsx,html,css EmmetInstall
imap <C-e> <plug>(emmet-expand-abbr)
nmap <C-e> <plug>(emmet-expand-abbr)

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
" --------------------
" shougo/deoplete.nvim
" --------------------
"
let g:deoplete#enable_at_startup = 1

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"
" ----------------
" sirver/ultisnips
" ----------------
"
let g:UltiSnipsExpandTrigger="<c-y>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = ['ultisnips']

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
