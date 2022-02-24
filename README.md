# dotfiles
## `README.md` を `sh` コマンドの引数に渡して実行してください。

#### gitの設定のうちuserセクションは `/etc/gitconfig` ファイルを作成して書き込んでください。
#### インストール処理（ `sh dotfiles/README.md` により、以下が実行されます。）
````
DIR=$(dirname "$0")
cd "$DIR"
mv dotfiles ~
cd ~

if [ -e ~/.zshrc ]; then
  mv ~/.zshrc ~/dotfiles/zsh/snippets/99-local.zsh
fi
ln -s ~/dotfiles/zsh/snippets/99-local.zsh ~/.zshrc

cat - ~/.zshrc << 'HERE' | tee ~/.zshrc >/dev/null
if [ -z $ZSH_LOADING ]; then
  ZSH_LOADING=1

  export CONFIG_DIR=~/dotfiles/zsh
  source $CONFIG_DIR/zshrc
  return
fi
HERE

# git用の設定
mkdir -p ~/.config/git
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.config/git/ignore

# nvim用の設定
ln -s ~/dotfiles/nvim ~/.config/

# vim用の設定(デフォルトで無効)
# ln -s dotfiles/vimrc .vimrc
# ln -s dotfiles/vim .vim

# tig(デフォルトで無効)
# ln -s ~/dotfiles/tigrc ~/.tigrc
````

