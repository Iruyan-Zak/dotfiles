augroup haskell
    autocmd!
    autocmd FileType haskell call Def_haskell()
augroup END

function! Def_haskell()
    " tags
    set tags=tags;/,codex.tags;/
    set formatprg=par
    set csprg=hscope
    set csto=1 " search codex tags first
    let $PARINIT = 'rTbgqR B=.,?_A_a Q=_s>|'
    au BufEnter /*.hs call LoadHscope()

    let g:tagbar_type_haskell = {
        \ 'ctagsbin'  : 'hasktags',
        \ 'ctagsargs' : '-x -c -o-',
        \ 'kinds'     : [
            \  'm:modules:0:1',
            \  'd:data: 0:1',
            \  'd_gadt: data gadt:0:1',
            \  't:type names:0:1',
            \  'nt:new types:0:1',
            \  'c:classes:0:1',
            \  'cons:constructors:1:1',
            \  'c_gadt:constructor gadt:1:1',
            \  'c_a:constructor accessors:1:1',
            \  'ft:function types:1:1',
            \  'fi:function implementations:0:1',
            \  'o:others:0:1'
        \ ],
        \ 'sro'        : '.',
        \ 'kind2scope' : {
            \ 'm' : 'module',
            \ 'c' : 'class',
            \ 'd' : 'data',
            \ 't' : 'type'
        \ },
        \ 'scope2kind' : {
            \ 'module' : 'm',
            \ 'class'  : 'c',
            \ 'data'   : 'd',
            \ 'type'   : 't'
        \ }
    \ }

    function! LoadHscope()
        let db = findfile("hscope.out", ".;")
        if (!empty(db))
            let path = strpart(db, 0, match(db, "/hscope.out$"))
            set nocscopeverbose " suppress 'duplicate connection' error
            exe "cs add " . db . " " . path
            set cscopeverbose
        endif
    endfunction

    " lint
    let g:hlintRefactor#disableDefaultKeybindings = 1

    " Point Conversion (これは単体で動く)
    function! Pointfree()
        call setline('.', split(system('pointfree '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
    endfunction

    function! Pointful()
        call setline('.', split(system('pointful '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
    endfunction

    " binding
    nnoremap <silent> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>tg :!codex update --force<CR>:call system("git-hscope -X TemplateHaskell")<CR><CR>:call LoadHscope()<CR>
    nnoremap <silent> <leader>hh :Hoogle<CR>
    nnoremap <leader>hH :Hoogle 
    nnoremap <silent> <leader>hi :HoogleInfo<CR>
    nnoremap <leader>hI :HoogleInfo 
    nnoremap <silent> <leader>hz :HoogleClose<CR>
    nnoremap <silent> <leader><CR> :noh<CR>:GhcModTypeClear<CR>
    nnoremap <silent> <leader>ht :GhcModType<CR>
    nnoremap <silent> <leader>hT :GhcModTypeInsert<CR>
    nnoremap <silent> <leader>hc :Neomake ghcmod<CR>
    nnoremap <silent> <leader>hr :call ApplyOneSuggestion()<CR>
    nnoremap <silent> <leader>hR :call ApplyAllSuggestions()<CR>
    nnoremap <silent> <leader>hl :Neomake hlint<CR>
    vnoremap <silent> <leader>h. :call Pointfree()<CR>
    vnoremap <silent> <leader>h> :call Pointful()<CR>
endfunction
