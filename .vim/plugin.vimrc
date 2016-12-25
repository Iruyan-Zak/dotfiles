if has('vim_starting')
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  " runtimepath の追加は必須
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let g:neobundle_default_git_protocol='https'

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Visual customize
" NeoBundle 'nanotech/jellybeans.vim' " カラースキームテーマ
" NeoBundle 'miyakogi/seiya.vim' " JellyBeans(↑) で背景が不透明になるのを防ぐ
NeoBundle 'itchyny/lightline.vim' " 下部ステータスラインに色がつく
NeoBundle 'bronson/vim-trailing-whitespace' " 文末の空白を赤く表示
NeoBundle 'nathanaelkane/vim-indent-guides' " インデントを縞模様で見やすく

" Edit support
NeoBundle 'Townk/vim-autoclose' " カッコを自動で閉じる。賢く。
NeoBundle 'ConradIrwin/vim-bracketed-paste' " 挿入モードでクリップボード貼り付けしても平和
NeoBundle 'tomtom/tcomment_vim' " Ctrl-/ を2回押してみ(Normal/Insert/Visual)

" Tool
NeoBundle 'scrooloose/nerdtree' " ファイラ機能 Ctrl-E
NeoBundle 'bufferlist.vim' " バッファリスト Ctrl-T
NeoBundle 'tpope/vim-fugitive' " Vim から Git を便利に触れる
NeoBundle 'kana/vim-submode' " Submode を使ってキーバインドを便利に see also 'binding.vimrc'

" Syntax
NeoBundle 'scrooloose/syntastic' " 構文チェッカ
" NeoBundle 'othree/html5.vim'
" NeoBundle 'hail2u/vim-css3-syntax'
" NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'digitaltoad/vim-pug'
" NeoBundle 'AtsushiM/sass-compile.vim'

" Complete
if has('lua')
"    NeoBundle 'Shougo/neocomplete.vim'
"    NeoBundle 'Shougo/neosnippet.vim'
"    NeoBundle 'Shougo/neosnippet-snippets'
else
    " NeoBundle 'Shougo/neocomplcache.vim'
endif
call neobundle#end()

NeoBundleCheck

let g:seiya_auto_enable = !has('gui_running')
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラー無効
let g:indent_guides_auto_colors=0
" 奇数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
" 偶数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" ガイドの幅
let g:indent_guides_guide_size = 1

" source ~/.vim/plugin.complete.vimrc

