setopt append_history
setopt auto_cd
setopt auto_list  # 補完候補を自動でリストアップ
setopt auto_menu  # TABを押すと補完候補を選べる
setopt auto_param_keys
setopt auto_param_slash  # ディレクトリ名を補完したら "/" を付加する
setopt auto_pushd
setopt beep
setopt brace_ccl  # ブレース展開 {abc1-3x-z} => 1 2 3 a b c x y z
setopt correct
setopt equals  # コマンドのフルパス取得 =ps => /bin/ps
setopt extended_glob
setopt extended_history
setopt glob_dots  # * で隠しファイルまで対象に入る
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt interactive_comments
setopt list_packed  # 補完リストの行数を少なくするように工夫する
setopt magic_equal_subst  # PATH=~/bin:~/.local/bin:$PATH の "~" が2つとも展開される
setopt mark_dirs  # glob展開で展開されたディレクトリ名に "/" を付加する
setopt no_beep
setopt no_flow_control
setopt numeric_glob_sort
setopt print_eight_bit
setopt prompt_subst
setopt pushd_ignore_dups
setopt share_history
unsetopt list_beep

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified


# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


# キーバインド

# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward
