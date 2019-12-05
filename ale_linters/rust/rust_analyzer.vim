" Author: Jon Gjengset <jon@thesquareplanet.com>
" Description: The next generation language server for Rust

call ale#Set('rust_analyzer_executable', 'ra_lsp_server')
call ale#Set('rust_analyzer_config', {})

function! ale_linters#rust#rust_analyzer#GetCommand(buffer) abort
    return '%e'
endfunction

function! ale_linters#rust#rust_analyzer#GetProjectRoot(buffer) abort
    let l:cargo_file = ale#path#FindNearestFile(a:buffer, 'Cargo.toml')

    return !empty(l:cargo_file) ? fnamemodify(l:cargo_file, ':h') : ''
endfunction

call ale#linter#Define('rust', {
\   'name': 'rust_analyzer',
\   'lsp': 'stdio',
\   'lsp_config': {b -> ale#Var(b, 'rust_analyzer_config')},
\   'executable': {b -> ale#Var(b, 'rust_analyzer_executable')},
\   'command': function('ale_linters#rust#rust_analyzer#GetCommand'),
\   'project_root': function('ale_linters#rust#rust_analyzer#GetProjectRoot'),
\})
