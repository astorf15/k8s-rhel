# .bashrc
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lha'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Colors
export RED="\[\033[0;31m\]"
export GREEN="\[\033[0;32m\]"
export YELLOW="\[\033[0;33m\]"
export BLUE="\[\033[0;34m\]"
export PURPLE="\[\033[0;35m\]"
export CYAN="\[\033[0;36m\]"
export WHITE="\[\033[0;37m\]"
export RESET="\[\033[0m\]"

# Prompt
export PS1="$GREEN\u$GREEN@\h$YELLOW:\w$RESET$ "


source <(kubectl completion bash)
alias k='kubectl'
complete -F __start_kubectl k

