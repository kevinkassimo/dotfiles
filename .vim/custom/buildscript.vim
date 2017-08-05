function! KSMBuildScript()
    if (&ft == "go")
        :! go build %
    elseif (&ft == "c")
        execute ":! gcc -o " . expand("%:p:h") . "/" . expand("%:r:t") . " " . expand("%")
    elseif (&ft == "cpp")
        execute ":! g++ --std=\"c++11\" -o " . expand("%:p:h") . "/" . expand("%:r:t") . " " . expand("%")
    else
        :echo "Building this filetype not supported"
    endif
endfunction
nnoremap <leader>b :call KSMBuildScript() <Return>
