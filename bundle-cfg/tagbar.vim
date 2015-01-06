nnoremap <silent> <F10> :TagbarToggle<CR>

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
		\ 'f:function definitions:0:0',
		\ 'T:type definitions:0:0',
		\ 'g:enumeration names:0:0',
		\ 's:structure names:0:0',
		\ 'm:module names:0:0',
		\ 'c:static constants:0:0',
		\ 't:traits:0:0',
		\ 'i:trait implementations:0:0',
		\ 'd:macro definitions:0:0'
	\ ],
	\ 'kind2scope' : {
	\ },
	\ 'scope2kind' : {
	\ }
\ }
