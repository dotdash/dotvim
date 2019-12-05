call ale#Set('php_intelephense_config', {})

function! ale_linters#php#intelephense#GetProjectRoot(buffer) abort
    let l:rootfile = ale#path#FindNearestFile(a:buffer, '.root')
    if (!empty(l:rootfile))
        return fnamemodify(l:rootfile, ':h')
    endif

    let l:composer_path = ale#path#FindNearestFile(a:buffer, 'composer.json')
    if (!empty(l:composer_path))
        return fnamemodify(l:composer_path, ':h')
    endif

    let l:git_path = ale#path#FindNearestDirectory(a:buffer, '.git')

    return !empty(l:git_path) ? fnamemodify(l:git_path, ':h:h') : ''
endfunction

call ale#linter#Define('php', {
\   'name': 'intelephense',
\   'lsp': 'stdio',
\   'lsp_config': {b -> ale#Var(b, 'php_intelephense_config')},
\   'executable': 'intelephense',
\   'command': '%e --stdio',
\   'project_root': function('ale_linters#php#intelephense#GetProjectRoot'),
\})
