# Set up the prompt


alias ll="ls -lah"
alias eclipse="~/java/eclipse/eclipse"
alias ubu="sudo apt-get update && sudo apt-get upgrade -y"

# past on middle tap
synclient TapButton3=3 TapButton2=2

autoload -Uz promptinit
#promptinit
#prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v

export EDITOR=vim
export GIT_EDITOR=vim 
export PATH=${PATH}:~/android-sdk-linux/tools
export PATH=${PATH}:~/android-sdk-linux/platform-tools
export PATH=${PATH}:~/node/watchers/bin/
export ANDROID_SDK=~/android-sdk-linux 
export ANDROID_HOME=~/android-sdk-linux 
export ECLIPSE_HOME=~/java/eclipse
export LANG=en_US.UTF-8
export LANGUAGE=en
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE=C
export LC_ALL=


# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
#autoload -Uz compinit
#compinit

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true

#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
