" ファイル開閉
set confirm     " 保存されていないファイルがあるときは終了前に保存確認
set nobackup    " バックアップ取らない
set autoread    " 他で書き換えられたら自動で読み直す
set noswapfile  " スワップファイル作らない
set hidden      " 編集中でも他のファイルを開けるようにする

" 文字コード
set ffs=unix,dos,mac    " 改行文字
set termencoding=utf-8  " 全体的に UTF-8 を使う
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp

set autochdir   " バッファを変えたら cd

