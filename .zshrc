# Path to your Oh My Zsh installation.
export ZSH="$HOME/dotfiles/.oh-my-zsh"

# Use my custom theme
ZSH_THEME="curtis-theme"

# Alias all my scripts
alias connect="$HOME/dotfiles/scripts/connectScript"

source $ZSH/oh-my-zsh.sh

unsetopt autocd