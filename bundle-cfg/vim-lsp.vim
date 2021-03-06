let g:lsp_diagnostics_echo_cursor = 1

"let g:lsp_settings_root_markers = ['.root', 'composer.json', '.git', '.git/']
let g:lsp_settings_root_markers = ['.root']

function! s:on_lsp_buffer_enabled() abort
    " setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <F3> <plug>(lsp-document-format)
endfunction


augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

autocmd FileType markdown.lsp-hover
  \ nmap <silent><buffer>q :pclose<CR>| doautocmd <nomodeline> BufWinEnter
