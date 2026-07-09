" full text search

" use ripgrep instead of ack for faster search
if executable('rg')
  let g:ackprg = 'rg --vimgrep --smart-case --no-heading'
endif

map ,h <C-v>e"+y,a<C-r>+<Enter>/<C-r>+<Enter>
map ,a \|:Ack -w ''<Left>

" file search

" netrw - Vims own file browser
map NT :NERDTreeFind<CR>

" fuzzy file finder
set rtp+=~/.fzf
map ,f :FZF<cr>

map ,t :Rg<cr>

" only search for file content with Rg
" global
" command! -bang -nargs=* Rg call fzf#vim#grep("rg -F --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" current folder
command! -bang -nargs=* Rg call fzf#vim#grep("rg -F --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>)." .", 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" goto file
setlocal suffixesadd=.js,.jsx,.ts,.tsx,.mjs,.cjs,.json
setlocal path+=.,src
