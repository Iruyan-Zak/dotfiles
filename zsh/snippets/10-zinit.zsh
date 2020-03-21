### Zinit install
if [ ! -e ~/.zinit ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
  mkdir -p $ZDOTDIR/complete
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

GENCOMPL_FPATH=$ZDOTDIR/complete

zinit load "zsh-users/zsh-autosuggestions"  # 使ったコマンドを記憶してサジェスト
zinit load "zsh-users/zsh-syntax-highlighting"
zinit load "zsh-users/zsh-completions"  # gitなどのコマンド補完
zinit load "RobSis/zsh-completion-generator"  #gencomp
zinit load "Tarrasch/zsh-functional" # each map filter fold
zinit load "willghatch/zsh-hooks"
zinit load "unixorn/warhol.plugin.zsh"  # ansi
zinit load "mollifier/zload"  # 関数の自動再読み込み いる？
zinit load "agkozak/zsh-z"
zinit ice src"init.sh"; zinit load "b4b4r07/enhancd"  # cdの曖昧移動

autoload -U compinit; compinit

zinit snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/extract/extract.plugin.zsh
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh
# zinit snippet OMZ::plugins/tmux/tmux.plugin.zsh
# zinit snippet OMZ::plugins/z/z.plugin.zsh
# zinit snippet OMZ::plugins/npm/npm.plugin.zsh

zload $GENCOMPL_FPATH/_*

# zinit ice pick"async.zsh" src"powerlevel9k.zsh-theme"; zinit light bhilburn/powerlevel9k

