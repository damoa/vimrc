function! JSFolds()
  let thisline = getline(v:lnum)
  if thisline =~? '\v^\s*$'
    return '-1'
  endif

  if thisline =~ '^import.*$'
    return 1
  else
    return indent(v:lnum) / &shiftwidth
  endif
endfunction

autocmd BufNewFile,BufRead *.html.erb set filetype=eruby

autocmd FileType eruby setlocal foldmethod=indent

autocmd FileType javascript setlocal foldmethod=expr
autocmd FileType javascript setlocal foldexpr=JSFolds()

autocmd FileType python setlocal foldmethod=indent

autocmd FileType ruby setlocal foldmethod=indent

set foldlevel=1
