# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR="$HOME"

# Fix for arch
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Disable updates to OMZ
export DISABLE_AUTO_UPDATE=true

# Use my custom theme
ZSH_THEME="curtis-theme"

source $ZSH/oh-my-zsh.sh

unsetopt autocd

# bun completions
[ -s "/home/curtispolic/.bun/_bun" ] && source "/home/curtispolic/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
