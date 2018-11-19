nnoremap <silent> <F10> :TagbarToggle<CR>

let g:tagbar_sort = 0
let g:tagbar_iconchars = ['+', '-']

let g:tagbar_type_php = {
	\ 'replace' : 1,
	\ 'ctagsargs' : '-f - ',
	\ 'ctagsbin' : 'ptags',
	\ 'sro' : '::',
	\ 'kinds' : [
		\ 'n:namespace:0:1',
		\ 'i:interfaces:0:1',
		\ 'c:classes:0:1',
		\ 'd:constant definitions:0:0',
		\ 'f:functions:0:1',
		\ 'v:variables:0:0',
		\ 'j:javascript functions:0:1'
	\ ],
	\ 'kind2scope' : {
		\ 'c' : 'class',
		\ 'i' : 'interface',
		\ 'n' : 'namespace'
	\ },
	\ 'scope2kind' : {
		\ 'class' : 'c',
		\ 'interface' : 'i',
		\ 'namespace' : 'n'
	\ }
\ }

let g:tagbar_type_rust = {
	\ 'replace' : 1,
	\ 'ctagsargs' : '-f - ',
	\ 'ctagsbin' : 'ctags',
	\ 'sro' : '::',
	\ 'kinds' : [
		\ 'n:modules:0:1',
		\ 's:structs:0:1',
		\ 'i:trait interfaces:0:1',
		\ 'c:implementation:0:1',
		\ 'f:functions:0:1',
		\ 'g:enums:0:1',
		\ 't:type aliases:0:0',
		\ 'v:globals:0:0',
		\ 'M:macros:0:1',
		\ 'm:struct fields:0:0',
		\ 'e:enum variants:0:0',
		\ 'P:methods:0:1'
	\ ],
	\ 'kind2scope' : {
			\ 's' : 'struct',
			\ 'c' : 'implementation',
			\ 'i' : 'interface',
			\ 'g' : 'enum',
			\ 'n' : 'module',
	\ }
\ }
