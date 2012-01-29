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

function! PHPPreview()
  let l:bufno = bufnr('%')

  new
  set buftype=nofile bufhidden=delete nobuflisted
  setlocal noswapfile

  put =eval('getbufline(' . l:bufno . ', 1, 99999999999)')
  0d
  silent! %!php
endfunction

nnoremap <F12> :call PHPPreview()<CR>
