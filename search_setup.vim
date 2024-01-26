" full text search

map ,h <C-v>e"+y,a<C-r>+<Enter>/<C-r>+<Enter>
map ,a \|:Ack ''<Left>

" file search

" netrw - Vims own file browser
map NT :NERDTreeFind<CR>

" fuzzy file finder
set rtp+=/home/damoa/.fzf
map ,f :FZF<cr>

map ,t :Rg<cr>
