if ! &diff
  let g:syntastic_enable_signs=1
  let g:syntastic_auto_loc_list=2
  let g:syntastic_mode_map = {
        \ 'mode': 'passive',
        \ 'active_filetypes': ['c', 'cpp', 'css', 'php', 'rst', 'rust', 'scss', 'typescript']
        \ }

  let g:syntastic_phpcs_conf = "--standard=saltation --encoding=utf-8"
  let g:syntastic_phpmd_disable = 1
endif
