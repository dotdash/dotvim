let b:ale_linters = ['rust_analyzer']
nnoremap <silent> gd :ALEGoToTypeDefinition<CR>
nnoremap <buffer>  :ALEGoToDefinition<CR>
nnoremap <buffer> ] :ALEGoToDefinitionInSplit<CR>
nnoremap <buffer>  :ALEGoToDefinitionInVSplit<CR>
