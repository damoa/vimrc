set t_Co=256
" light/ dark
" set background=light
colorscheme solarized8
" colorscheme simple-dark

" vim airline
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'

" show character byte count for current buffer
function! AirlineBufferBytesFast()
  return line2byte(line('$') + 1) - 1
endfunction

let g:airline_section_y = airline#section#create(['%{AirlineBufferBytesFast()} bytes'])
