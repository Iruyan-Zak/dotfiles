set tabstop=4 shiftwidth=4 softtabstop=0
set expandtab              " タブを空白文字に展開
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions+=m           " 整形オプション，マルチバイト系を追加
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ

if has('persistent_undo')
	set undodir=~/.vim/undo
	set undofile
endif


