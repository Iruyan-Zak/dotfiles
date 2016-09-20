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
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'miyakogi/seiya.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'nathanaelkane/vim-indent-guides'

" Edit support
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
NeoBundle 'tomtom/tcomment_vim'

" Tool
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bufferlist.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kana/vim-submode'

" Syntax
NeoBundle 'scrooloose/syntastic'
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

