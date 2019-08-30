" 検索
set wrapscan                    " 最後まで検索したら先頭へ戻る
set ignorecase                  " 大文字小文字無視（全小文字検索は '/\C' を用いよ ）
set smartcase                   " 大文字ではじめたら大文字小文字無視しない
set incsearch                   " インクリメンタルサーチ
set hlsearch                    " 検索文字をハイライト

" コマンド
set wildmenu                    " コマンド補完を強化
set wildmode=list:longest,full  " リスト表示:最長マッチ, TAB 連打で選択

" ディレクトリをパスに追加
" Fix path issues from vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
let s:default_path = escape(&path, '\ ') " store default value of 'path'
autocmd BufRead *
      \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
      \ exec "set path-=".s:tempPath |
      \ exec "set path-=".s:default_path |
      \ exec "set path^=".s:tempPath |
      \ exec "set path^=".s:default_path

