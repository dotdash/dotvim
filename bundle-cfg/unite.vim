if exists('*unite#custom#source')
  nnoremap <leader>f :<C-u>Unite -start-insert file_rec/async:!<CR>
  nnoremap <leader>f :<C-u>Unite -start-insert file_rec:!<CR>

  call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'matchers', ['converter_relative_word', 'matcher_fuzzy'])

  let g:unite_source_rec_max_cache_files = 0
  call unite#custom#source('file_rec,file_rec/async', 'max_candidates', 0)
endif
