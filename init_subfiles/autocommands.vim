" disable hlsearch after search is done
augroup vimrc-incsearch-highlight
	autocmd!
	autocmd CmdlineEnter /,\? :set hlsearch
	autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

autocmd FileType markdown,tex setlocal spell spelllang=en_gb
autocmd BufWritePre *.py :lua vim.lsp.buf.format()
