# dotfiles
## めっちゃ雑ですが、cloneしたらその場で `source dotfiles/README.md` を打ってください。

#### インストール処理（ `source dotfiles/README.md` により、以下が実行されます。）
````
mv dotfiles ~
cd ~
ln -s dotfiles/zshenv .zshenv
ln -s dotfiles/zsh/snippets/99-local.zsh .zshrc
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/vim .vim
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore_global .gitignore_global
````

