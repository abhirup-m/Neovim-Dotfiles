let g:vimtex_toc_config = {'tocdepth': 1, 'mode': 1, 'indent_levels': 1, 'layer_status': { 'content': 1,'label': 0,'todo': 0,'include': 0 }, 'refresh_always': 0}
let g:vimtex_toc_show_preamble = 0
let g:vimtex_quickfix_ignore_filters = ['.*Overfull.*','.*Warning: Foreign command.*','.*Underfull.*','.*Token not allowed in a PDF string.*','.*Package caption Warning: The option.*','.*Missing "title" in ', '.*Using fall-back BibTeX(8) backend.*', '.*Package biblatex Warning.*Invalid format of field.*','.*You need to compile with XeLaTeX or LuaLaTeX to use the Fira fonts on input line.*', '.*A float is stuck.*', '.*Package biblatex Warning: Using fall-back bibtex backend:', '.*Package fontspec Warning: OpenType feature.*', '.*Replacing it with the kernel definition.*']
let g:vimtex_quickfix_open_on_warning=1
let g:vimtex_view_method='zathura'
let g:vimtex_matchparen_enabled=0
let g:vimtex_compiler_method='tectonic'

let g:onedark_config = {
	\ 'toggle_style_key' : 'tt',
	\ 'style': 'darker',
	\ 'code_style': {
		\ 'comments': 'italic',
		\ 'keywords': 'bold',
		\ 'functions': 'bold',
	\ }
\}
