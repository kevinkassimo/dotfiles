function! KSMRunScript()
    if (&ft == 'go')
        :! go run %
    elseif (&ft == 'python')
        :! python %
    elseif (&ft == 'javascript')
        :! node %
    elseif (&ft == 'c')
        execute ":! gcc -o " . expand("%:p:h") . "/" . expand("%:r:t") . " " . expand("%")
        execute ":! " . expand("%:p:h") . "/" . expand("%:r:t")
    elseif (&ft == 'cpp')
        execute ":! g++ --std=\"c++11\" -o " . expand("%:p:h") . "/" . expand("%:r:t") . " " . expand("%")
        execute ":! " . expand("%:p:h") . "/" . expand("%:r:t")
    else
        :echo "Run file type not supported yet"
    endif
endfunction
nnoremap <leader>r :call KSMRunScript() <Return>
