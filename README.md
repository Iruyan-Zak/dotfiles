# dotfiles
## めっちゃ雑ですが、cloneしたらその場で `sh dotfiles/README.md` を実行してください。

#### インストール処理（ `sh dotfiles/README.md` により、以下が実行されます。）
````
mv dotfiles ~
cd ~
mkdir -p ~/.config/zsh
ln -s ~/dotfiles/zshenv ~/.zshenv
ln -s ~/dotfiles/zsh/.zshrc ~/.config/zsh
ln -s ~/dotfiles/zsh/snippets/99-local.zsh ~/.zshrc

# vim用の設定
# ln -s dotfiles/vimrc .vimrc
# ln -s dotfiles/vim .vim

# nvim用の設定
ln -s ~/dotfiles/nvim ~/.config/

ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
````

