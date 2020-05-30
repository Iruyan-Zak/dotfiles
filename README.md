# dotfiles
## めっちゃ雑ですが、cloneしたらその場で `sh dotfiles/README.md` を実行してください。

#### インストール処理（ `sh dotfiles/README.md` により、以下が実行されます。）
````
mv dotfiles ~
cd ~
ln -s ~/dotfiles/zsh/snippets/99-local.zsh ~/.zshrc

cat << 'HERE' > ~/.zshrc
if [ -z $ZSH_LOADING ]; then
  ZSH_LOADING=1

  export CONFIG_DIR=~/dotfiles/zsh
  source $CONFIG_DIR/zshrc
  return
fi
HERE

# vim用の設定
# ln -s dotfiles/vimrc .vimrc
# ln -s dotfiles/vim .vim

# nvim用の設定
mkdir -p ~/.config
ln -s ~/dotfiles/nvim ~/.config/

ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
````

