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
case ${OSTYPE} in
  darwin*)
    eval "$(/usr/local/bin/brew shellenv)"
    ;;
  linux*)
      if type git &>/dev/null; then
        if [[ -d $HOME/.homebrew ]] then
            eval "$($HOME/.homebrew/bin/brew shellenv)"
        else
            eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
        fi
      fi
    ;;
esac

# -- sheldon --
if type sheldon &>/dev/null; then
    eval "$(sheldon source)"
fi

# -- starship --
eval "$(starship init zsh)"

# -- z --
. ~/z/z.sh

# -- completions --
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

## -- PATH --
if type nodenv &> /dev/null; then
    eval "$(nodenv init -)"
fi
export PATH="$HOME/.cargo/bin:$HOME/.rbenv/shims:$HOME/.nodenv/bin:$HOME/.dotnet:$PATH"

if [[ (( ! $+commands[yarn] )) ]] then
    export PATH="$PATH:`yarn global bin`"
fi
if [ -d "/mnt/c/Users/kichi/AppData/Local/Programs/Microsoft VS Code/bin" ]; then
	export PATH="$PATH:/mnt/c/Users/kichi/AppData/Local/Programs/Microsoft VS Code/bin"
fi

if [[ -d "/Applications/SWI-Prolog.app/Contents/MacOS" ]] then
    export PATH="$PATH:/Applications/SWI-Prolog.app/Contents/MacOS"
fi

## -- environment --
export EDITOR="nvim"

## -- brew --
FPATH=~/.zsh/completion:$(brew --prefix)/share/zsh/site-functions:$FPATH
if [[ -d "/home/ugrad/22/s2211093" ]] then
    export PATH="$PATH:/home/ugrad/22/s2211093/bin"
    alias pbcopy="xsel --clipboard --input"
    alias nvim="$HOME/bin/nvim.appimage"
fi

autoload -Uz compinit
compinit -i

## -- pyenv --
if type pyenv &> /dev/null; then
    eval "$(pyenv init -)"
fi

## -- fzf --
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## -- alias --
if type brew &>/dev/null; then
    alias la='exa -a'
    alias l='exa -a1'
    alias ls='exa'
    alias cat='bat'
fi
alias vim='nvim'


