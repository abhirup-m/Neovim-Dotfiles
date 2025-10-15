set clipboard+=unnamedplus "use system clipboard"
set whichwrap+=<,>,[,] "allow me to navigate to next line by pressing right
set autowriteall
set guifont="RobotoMono Nerd Font Propo 10"
set autochdir "change into directory of opened/switched buffer"
set showtabline=2 "always show tabline"
set termguicolors " Enables 24-bit RGB color"
set ignorecase
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters"
set noswapfile " Don't use a swapfile for the buffer"
set undofile "enable undofile"
set backspace=indent,eol,start "allow backspacing in INSERT mode"
set number "display line numbers"
set incsearch "show search results while typing"
set nohidden "don't keep buffers hidden after they are closed"
set completeopt="menuone,preview,noinsert" "options for completion menu"
set autoindent "indent new lines automatically"
set smartindent "indent keeping braces in mind"
set tabstop=4 "tabs are worth four spaces"
set shiftwidth=0 "width of indentation, 0 means use tabstop"
set wrap "wrap text"
set signcolumn=yes "always display the column that shows signs (lsp errors, git gutter, etc) 

let g:neovide_cursor_animation_length = 0
let g:python3_host_prog = "/usr/bin/python"
let g:mapleader = " "
set guifont=Roboto\ Mono:h13
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
