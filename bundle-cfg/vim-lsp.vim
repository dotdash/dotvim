let g:lsp_use_native_client = 1

let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_document_code_action_signs_enabled = 0

let g:lsp_tagfunc_source_methods = ['definition']

function! s:on_lsp_buffer_enabled() abort
    " setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> <leader>la <plug>(lsp-code-action-float)
    nmap <buffer> <leader>ld <plug>(lsp-definition)
    nmap <buffer> <leader>lr <plug>(lsp-references)
    nmap <buffer> <leader>li <plug>(lsp-implementation)
    nmap <buffer> <leader>ls <plug>(lsp-workspace-symbol)
    nmap <buffer> <leader>lt <plug>(lsp-type-definition)
    nmap <buffer> <leader>ln <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <F2> <plug>(lsp-document-format)
    xmap <buffer> <F2> <plug>(lsp-document-range-format)
endfunction


augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

autocmd FileType markdown.lsp-hover
  \ nmap <silent><buffer>q :pclose<CR>| doautocmd <nomodeline> BufWinEnter

hi LspWarningHighlight gui=undercurl cterm=undercurl guisp=yellow
exec 'hi LspErrorHighlight cterm=undercurl gui=undercurl ' .
      \' guisp=' . synIDattr(synIDtrans(hlID('Error')), 'fg', 'guifg')

exec 'hi LspErrorVirtualText term=italic,underline cterm=italic,underline gui=italic,underline ' .
      \' ctermfg=' . synIDattr(synIDtrans(hlID('Error')), 'fg', 'cterm') .
      \' guifg=' . synIDattr(synIDtrans(hlID('Error')), 'fg', 'guifg')

exec 'hi LspWarningVirtualText term=italic,underline cterm=italic,underline gui=italic,underline ' .
      \' ctermfg=' . synIDattr(synIDtrans(hlID('Todo')), 'fg', 'cterm') .
      \' guifg=' . synIDattr(synIDtrans(hlID('Todo')), 'fg', 'guifg')

exec 'hi LspInformtionVirtualText term=italic,underline cterm=italic,underline gui=italic,underline ' .
      \' ctermfg=' . synIDattr(synIDtrans(hlID('Normal')), 'fg', 'cterm') .
      \' guifg=' . synIDattr(synIDtrans(hlID('Normal')), 'fg', 'guifg')

exec 'hi LspHintVirtualText term=italic,underline cterm=italic,underline gui=italic,underline ' .
      \' ctermfg=' . synIDattr(synIDtrans(hlID('Normal')), 'fg', 'cterm') .
      \' guifg=' . synIDattr(synIDtrans(hlID('Normal')), 'fg', 'guifg')

let g:lsp_diagnostics_float_insert_mode_enabled = 1
let g:lsp_diagnostics_highlights_insert_mode_enabled = 1
let g:lsp_diagnostics_signs_insert_mode_enabled = 1
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 1

let g:lsp_diagnostics_virtual_text_prefix = '» '
let g:lsp_diagnostics_virtual_text_align = 'after'
let g:lsp_diagnostics_virtual_text_wrap = 'truncate' 

if getcwd() == expand('~')
    let g:lsp_auto_enable = 0
endif
