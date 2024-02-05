func! Compile()
	:w
    	if &filetype == "tex" || &filetype == "latex"
		:silent! VimtexCompileSS
	elseif &filetype == "python"
		:!compile %
	endif
endf

fun! ExitBuffer()
    update
    if len(getbufinfo({'buflisted':1})) > 1
        bdelete
    else
        quit
    endif
endfun
