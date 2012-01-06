" General stuff
au FileType php setl comments=s1:/**,mb:*,ex:*/,s1:/*,mb:*,ex:*/,://,:#
au FileType php setl formatoptions=croqn

" Syntax
let g:php_noShortTags = 1
let g:php_baselib = 1
let g:php_htmlInStrings = 1
let g:php_sync_method = -1
let g:php_folding = 0

" Indent
let g:PHP_autoformatcomment = 0
set expandtab sw=2 ts=2
