# Set up the prompt

alias ll="ls -lah"
#alias rm="rm -i"
alias eclipse="~/java/eclipse/eclipse"
alias ap="absolute_path"
alias vim-git-u="vim `git status --porcelain | sed -ne 's/^ M //p'`"

bindkey -v

export EDITOR=vim
export GIT_EDITOR=vim 
export PATH=${PATH}:~/bin
export PATH=${PATH}:~/android-sdk/tools
export PATH=${PATH}:~/android-sdk/platform-tools
export ANDROID_SDK=~/android-sdk 
export ANDROID_HOME=~/android-sdk 
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
