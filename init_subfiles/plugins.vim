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
	"Plug 'SirVer/ultisnips' " snippet engine
	Plug 'L3MON4D3/LuaSnip'
	
	" language-specific
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'lervag/vimtex'
	Plug 'kaarmu/typst.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

	" ui
	Plug 'sainnhe/sonokai'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'akinsho/bufferline.nvim'

call plug#end()
