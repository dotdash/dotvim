" General stuff
au FileType php setl comments=s1:/**,mb:*,ex:*/,s1:/*,mb:*,ex:*/,://,:#
au FileType php setl formatoptions=croqn

" Syntax
let g:php_short_tags = 0
let g:php_baselib = 1
let g:php_htmlInStrings = 1
let g:php_sync_method = -1
let g:php_smart_members = 1
let g:php_alt_properties = 0
let g:php_alt_blocks = 1
let g:php_alt_arrays = 1
let g:php_alt_construct_parents = 1

let php_folding = 0
let php_strict_blocks = 0

" Indent
let g:PHP_autoformatcomment = 0
set expandtab sw=2 ts=2
