" Add ruby code highlighting to json.jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" code highlighting inside code fences
let g:markdown_fenced_languages = ['python', 'javascript', 'html', 'bash', 'cpp', 'ruby']
