#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias-list #

# sudo alias
alias please='sudo'
alias bitte='sudo'
alias fuck='sudo'
alias sduo='sudo'
alias suod='sudo'
alias sudp='sudo'
alias sud='sudo'
alias c='clear'

# pacman shortcuts alias
alias update-all='sudo pacman -Syuu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# linux command alias
alias ls='ls -lha --color=auto'

# Alias-list end # 

# Prompt
PS1='[\u@\h \W]\$ '

export EDITOR='emacs'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# fetch #
pfetch
