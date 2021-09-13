call ddc#custom#patch_global('sources', ['ddc-vim-lsp', 'tabnine'])

call ddc#custom#patch_global('sourceOptions',
      \ {
      \   'ddc-vim-lsp': {
      \     'matchers': ['matcher_head'],
      \     'mark': 'lsp',
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

inoremap <silent><expr> <TAB>
                  \ pumvisible() ? '<C-n>' :
                  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
                  \ '<TAB>' : ddc#manual_complete()

inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()
