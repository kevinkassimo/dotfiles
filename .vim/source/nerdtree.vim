" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree shortcut
nnoremap <leader>n :NERDTreeToggle<CR>
" let NERDTree navigate to where the current file is at
nnoremap <leader>f :NERDTreeFind<CR>
" close buffer properly without messing up the NERDTree
nnoremap <leader>e :bp\|bd #<CR>
