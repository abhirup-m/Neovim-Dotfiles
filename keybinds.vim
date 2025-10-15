" map Q to close buffer
nnoremap Q :call ExitBuffer()<CR>
" Disable arrow keys
noremap <Up> gk
noremap <Down> gj
" Map L and H keys to navigate to neighbouring tabs
nnoremap H :tabnext<CR>
nnoremap L :tabprevious<CR>
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
nmap ' gcc
vmap ' gc
" open init_subfiles folder
nnoremap <Leader>c :e ~/.config/nvim/init_subfiles
" display diagnostics
nnoremap <Leader>d :lua vim.diagnostic.open_float()<CR>

inoremap <C-H> <Esc>[s1z=`]a

""" luasnip
" Expand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" Jump forward through tabstops in visual mode
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
" Jump backward through snippet tabstops with Shift-Tab (for example)
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
