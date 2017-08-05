function! KSMRunScript()
    if (&ft == 'go')
        :! go run %
    elseif (&ft == 'python')
        :! python %
    elseif (&ft == 'javascript')
        :! node %
    else
        :echo "Run file type not supported yet"
    endif
endfunction
nnoremap <leader>r :call KSMRunScript() <Return>
