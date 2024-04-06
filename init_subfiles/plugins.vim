call plug#begin()
	" lsp plugins
	Plug 'neovim/nvim-lspconfig'

	""" completion plugins
	Plug 'hrsh7th/nvim-cmp' " completion plugin
	Plug 'hrsh7th/cmp-nvim-lsp' " nvim-cmp source for neovim builtin LSP client
	Plug 'hrsh7th/cmp-vsnip' " nvim-cmp source for vim-vsnip
	Plug 'hrsh7th/vim-vsnip' " Snippet plugin for vim/nvim that supports LSP/VSCode's snippet format
	Plug 'hrsh7th/cmp-buffer' " nvim-cmp source for buffer words
	Plug 'hrsh7th/cmp-path' " nvim-cmp source for filesystem paths
	Plug 'hrsh7th/cmp-cmdline' " nvim-cmp source for vim's cmdline

	" utility plugins
	Plug 'terryma/vim-multiple-cursors' " allows multiple cursors
	Plug 'SirVer/ultisnips' " snippet engine
	
	" language-specific
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'lervag/vimtex'

	" ui
	Plug 'navarasu/onedark.nvim'
	Plug 'ojroques/nvim-hardline'

call plug#end()
