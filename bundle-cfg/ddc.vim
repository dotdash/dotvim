call ddc#custom#patch_global('sources', ['vim-lsp', 'tabnine'])

call ddc#custom#patch_global('sourceOptions',
      \ {
      \   '_': {
      \     'matchers': ['matcher_fuzzy'],
      \     'sorters': ['sorter_fuzzy'],
      \     'converters': ['converter_fuzzy'],
      \   },
      \ })

call ddc#custom#patch_global('sourceOptions',
      \ {
      \   'tabnine': {
      \     'mark': 'TN',
      \     'isVolatile': v:true,
      \     'maxSize': 200,
      \   }
      \ })

call ddc#custom#patch_global('sourceOptions',
      \ {
      \   'vim-lsp': {
      \     'mark': 'lsp',
      \     'dup': v:true,
      \   }
      \ })
call ddc#custom#patch_global('filterParams',
      \ {
      \   'matcher_fuzzy': {
      \     'camelcase': v:true,
      \   }
      \ })

inoremap <silent><expr> <TAB>
                  \ pumvisible() ? '<C-n>' :
                  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
                  \ '<TAB>' : ddc#manual_complete()

inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()
