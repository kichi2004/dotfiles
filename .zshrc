# -- zsh settings --
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt print_exit_value
setopt share_history # history を重複
setopt hist_ignore_all_dups # history から重複削除
setopt auto_pushd # cd 時に自動で pushd
setopt pushd_ignore_dups # pushd から重複を削除
setopt append_history
setopt inc_append_history
setopt EXTENDED_HISTORY
setopt hist_ignore_space
setopt correct
zstyle ':completion:*' menu yes select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
autoload -Uz colors
colors

# -- brew --
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# -- sheldon --
eval "$(sheldon source)"

# -- starship --
eval "$(starship init zsh)"

# -- completions --
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

## -- brew --
FPATH=~/.zsh/completion:$(brew --prefix)/share/zsh/site-functions:$FPATH

autoload -Uz compinit
compinit -i

## -- alias --
alias la='exa -a'
alias l='exa -a1'
alias ls='exa'
alias cat='bat'
alias vim='nvim'

