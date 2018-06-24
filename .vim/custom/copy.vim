" Adds back normal copy and paste features
" There seems to be come minor problems with terminal version of Macvim wrt detecting command key

noremap <leader>y "*y
noremap <leader>p "*p
" These are temporarily placed to simulate Linux condition
" However, <C-c> also means for LEAVING insert mode
" That's a tradeoff anyways
noremap <C-c> "*y
noremap <C-v> "*p

