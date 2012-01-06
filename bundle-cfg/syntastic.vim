if ! &diff
  let g:syntastic_enable_signs=1
  let g:syntastic_auto_loc_list=2
  let g:syntastic_mode_map = {
        \ 'mode': 'passive',
        \ 'active_filetypes': ['php']
        \ }

  let g:syntastic_phpcs_conf = "--standard=saltation --encoding=utf-8"
endif
