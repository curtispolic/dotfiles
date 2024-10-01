# Path to your Oh My Zsh installation.
export ZSH="$HOME/dotfiles/.oh-my-zsh"
export ZDOTDIR="$HOME/dotfiles/"

# Disable updates to OMZ
export DISABLE_AUTO_UPDATE=true

# Use my custom theme
ZSH_THEME="curtis-theme"

# Alias all my scripts
alias connect="$HOME/dotfiles/scripts/connectScript"

source $ZSH/oh-my-zsh.sh

unsetopt autocd