let g:wrapmove = 1
imap <buffer> <silent> <Down> <C-o>gj
imap <buffer> <silent> <Up> <C-o>gk
nmap <buffer> <silent> <Down> gj
nmap <buffer> <silent> <Up> gk
inoremap <buffer> <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <buffer> <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"

noremap <silent> <Leader>w :call ToggleWrapMove()<CR>

function ToggleWrapMove()
  if g:wrapmove
    let g:wrapmove = 0
    echo "Wrap Move OFF"
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
  else
    let g:wrapmove = 1
    echo "Wrap Move ON"
    imap <buffer> <silent> <Down> <C-o>gj
    imap <buffer> <silent> <Up> <C-o>gk
    nmap <buffer> <silent> <Down> gj
    nmap <buffer> <silent> <Up> gk
    inoremap <buffer> <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    inoremap <buffer> <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
  endif
endfunction

"function ToggleWrap()
"if &wrap
"echo "Wrap OFF"
"setlocal nowrap
"set virtualedit=all
"silent! nunmap <buffer> <Up>
"silent! nunmap <buffer> <Down>
"silent! nunmap <buffer> <Home>
"silent! nunmap <buffer> <End>
"silent! iunmap <buffer> <Up>
"silent! iunmap <buffer> <Down>
"silent! iunmap <buffer> <Home>
"silent! iunmap <buffer> <End>
"else
"echo "Wrap ON"
"setlocal wrap linebreak nolist
"set virtualedit=
"setlocal display+=lastline
"noremap  <buffer> <silent> <Up>   gk
"noremap  <buffer> <silent> <Down> gj
"noremap  <buffer> <silent> <Home> g<Home>
"noremap  <buffer> <silent> <End>  g<End>
"inoremap <buffer> <silent> <Up>   <C-o>gk
"inoremap <buffer> <silent> <Down> <C-o>gj
"inoremap <buffer> <silent> <Home> <C-o>g<Home>
"inoremap <buffer> <silent> <End>  <C-o>g<End>
"endif
"endfunction
