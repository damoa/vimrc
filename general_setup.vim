set encoding=UTF-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" line numbers
set number

map <Tab> :bnext<CR>
map <S-Tab> :bprev<CR>

" do not create swap file
set noswapfile

" tab should always be 2 whitespaces
set softtabstop=0 expandtab shiftwidth=2 smarttab

" persist clipboard register value when quitting
autocmd VimLeave * call system("xsel -ib", getreg('+'))
