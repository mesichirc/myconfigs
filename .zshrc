export MANPAGER='nvim +Man!'

autoload -U colors && colors

PS1="%B%{$fg[white]%}[%{$fg[white]%}%W%{$fg[white]%} %{$fg[white]%}%~%{$fg[white]%}]%b "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

bindkey -e

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias -g makesh='./make.sh'
export PATH=$PATH:$HOME/.local/share/bin

. "/home/sichirc/.local/share/bob/env/env.sh"
