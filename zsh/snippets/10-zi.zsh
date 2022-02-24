### ZI install
if [ ! -e ~/.zi ]; then
  sh -c "$(curl -fsSL https://git.io/get-zi)" --
fi

if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.zi" && command chmod g-rwX "$HOME/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
# examples here -> https://z-shell.pages.dev/docs/gallery/collection

zi light-mode for \
  z-shell/z-a-meta-plugins \
  @annexes # <- https://z-shell.pages.dev/docs/ecosystem/annexes

zi light "zsh-users/zsh-autosuggestions"  # 使ったコマンドを記憶してサジェスト
zi light "zsh-users/zsh-syntax-highlighting"
zi light "zsh-users/zsh-completions"  # gitなどのコマンド補完
zi light "Tarrasch/zsh-functional" # each map filter fold
zi light "unixorn/warhol.plugin.zsh"  # ansi
zi ice src"init.sh"; zi light "b4b4r07/enhancd"  # cdの曖昧移動

zi snippet OMZL::git.zsh

zi snippet OMZP::common-aliases
zi snippet OMZP::colored-man-pages
zi snippet OMZP::extract
zi snippet OMZP::git
zi snippet OMZP::gnu-utils

zicompinit # <- https://z-shell.pages.dev/docs/gallery/collection#minimal
