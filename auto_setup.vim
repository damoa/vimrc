autocmd BufWritePre * %s/\s\+$//e " remove traling whitespaces
autocmd BufEnter,FocusGained * checktime " reload files when reopening vim with 'fg'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
