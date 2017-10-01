"
" strip_trailing_whitespace.vim
"
" A function that removes whitespace from files on save and puts
" the cursor back in the correct location. It uses a filetype whitelist,
" so add extensions here to perform it on more files.
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
