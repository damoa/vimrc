" Add ruby code highlighting to json.jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" code highlighting inside code fences
let g:markdown_fenced_languages = [
  \ 'html', 'python', 'javascript', 'js=javascript', 'bash=sh', 'css', 'ruby', 'cpp', 'json=javascript'
  \ ]

" set filetype=markdown in aichat files when user pauses in a markdown for '<updatetime> milliseconds'
autocmd FileType aichat autocmd CursorHold <buffer> set filetype=markdown | autocmd! CursorHold <buffer>
