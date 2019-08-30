" プラグインが実際にインストールされるディレクトリ
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
  if !isdirectory(expand(s:dein_repo_dir))
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let g:dein#install_max_processes = 16
let g:dein#install_message_type = 'none'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml('~/dotfiles/vim/dein/common.toml')
  " call dein#load_toml('~/.vim/dein/tools.toml')
  " call dein#load_toml('~/.vim/dein/haskell.toml', { 'on_ft': 'haskell' })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

