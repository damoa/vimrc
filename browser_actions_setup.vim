map PR :!gh pr view --web<Enter><Enter>

map ,b :Git blame<CR> \| <C-w>h^<C-v>e"+y:!git config --get remote.origin.url <Bar> sed -n 's\#.*:\([^.]*\)\.git\#\1\#p' <Bar> xargs -I % sh -c 'wsl-open https://github.com/%/commit/<C-r>+'<CR>
