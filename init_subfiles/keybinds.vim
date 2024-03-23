" map Q to close buffer
nnoremap Q :call ExitBuffer()<CR>
" Disable arrow keys
noremap <Up> gk
noremap <Down> gj
" Map L and H keys to navigate to neighbouring tabs
nnoremap H :bnext<CR>
nnoremap L :bprevious<CR>
" use ctrl+tab to create a new tab
nnoremap <C-t> :tabnew<CR>:edit<Space> 
" map k and j to move up and down based on visual lines (as compared to actual
" lines separated by line breaks)
nnoremap k gk
vnoremap k gk
nnoremap j gj
vnoremap j gj
" map Y to compile function
noremap Y :call Compile()<CR>
nnoremap <Leader>r :so $MYVIMRC<CR>
" toggle comment
nmap <C-/> gcc
vmap <C-/> gc
" open init_subfiles folder
nnoremap <Leader>c :e ~/.config/nvim/init_subfiles
