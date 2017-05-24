" Identify platform
"shell=bash
silent function! OSX()
return has('macunix')
endfunction
silent function! LINUX()
return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
return (has('win16') || has('win32') || has('win64'))
endfunction
silent function! GUI()
return (has('gui_running'))
endfunction

" Multiplatform compatibility
"if WINDOWS()
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
"set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
"endif

source $HOME/.vim/bundles.vim
source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/autocmd.vim
let g:airline_powerline_fonts=1
colorscheme gruvbox
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
"let g:bufferline_echo = 0
"let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
if !exists('g:airline_powerline_fonts')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.linenr = ''
endif
set laststatus=2
