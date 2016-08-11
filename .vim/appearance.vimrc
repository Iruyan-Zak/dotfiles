set t_Co=256          " 256色ターミナル対応
set showmatch         " 括弧の対応をハイライト
set matchtime=2
set cursorline        " カーソル行の背景色を変える
colorscheme sunburst

set showcmd           " 入力中のコマンドを表示
set laststatus=2      " ステータスラインを常時表示
set number            " 行番号表示

set wrap              " 画面幅で折り返す
set ambiwidth=double  " UTF-8の□や○でカーソル位置がずれないようにする

set scrolloff=8       " 行送り
set sidescrolloff=16  " 左右スクロール時の視界を確保
set sidescroll=1      " 左右スクロールは一文字づつ行う

set lazyredraw        " マクロなどを実行中は描画を中断

syntax on " シンタックスカラーリングオン

