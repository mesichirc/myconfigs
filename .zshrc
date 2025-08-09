eval "$(/opt/homebrew/bin/brew shellenv)"

export MANPAGER='nvim +Man!'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

autoload -U colors && colors

PS1="%B%{$fg[white]%}[%{$fg[white]%}%W%{$fg[white]%} %{$fg[white]%}%~%{$fg[white]%}]%b "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

bindkey -e

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias -g makesh='./make.sh'

# NVM START
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# NVM END

#JDK
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
#ANDROID
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

