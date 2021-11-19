# Set up the prompt

alias ll="ls -lah"
#alias rm="rm -i"
alias eclipse="~/java/eclipse/eclipse"
alias ap="absolute_path"
alias vim-git-u="vim `git ls-files -m`"
alias e="vim"
alias ctags="`brew --prefix`/bin/ctags"

bindkey -v
bindkey '^R' history-incremental-search-backward

export LC_ALL=en_US.UTF-8
export EDITOR=vim
export GIT_EDITOR=vim 
export PATH=${PATH}:~/bin
export PATH=${PATH}:~/android-sdk/tools
export PATH=${PATH}:~/android-sdk/platform-tools
export NPM_CONFIG_PREFIX=~/.npm-global
export N_PREFIX=$HOME/usr/local
#export ANDROID_SDK=~/android-sdk 
#export ANDROID_HOME=~/android-sdk 
export JAVA_HOME=$(/usr/libexec/java_home)

function absolute_path { echo "$PWD/$1" }

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -U compinit
compinit

#source ~/.zshrc_local

setopt NO_BEEP
setopt HIST_IGNORE_DUPS
unsetopt inc_append_history
unsetopt share_history

###-tns-completion-start-###
if [ -f /Users/rhrn/.tnsrc ]; then 
    source /Users/rhrn/.tnsrc 
fi
###-tns-completion-end-###
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

export PATH=~/.local/share/solana/install/active_release/bin:~/.npm-global/bin:$PATH
