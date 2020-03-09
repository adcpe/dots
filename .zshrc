# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

TERM=xterm-256color

# load antigen
source ~/.antigenrc

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/adc/.zshrc'
autoload -Uz compinit
compinit

# source nerd fonts
source ~/.local/share/fonts/i_all.sh

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# z.sh https://github.com/rupa/z
. ~/z.sh

# powerlevel 9k https://github.com/Powerlevel9k/powerlevel9k/
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# colorls stuff https://github.com/athityakumar/colorls
alias ls="colorls --git-status -h"
alias la="ls -A"
alias ll="ls -l"
alias lr="ls --report"
alias lsd="ls --sd"
alias lsf="ls --sf"

# pacman aliases
alias pacs="sudo pacman -S"
alias pacsyu="sudo pacman -Syu"
alias install="sudo pacman -Syu"
alias pacsyyu="sudo pacman -Syyu"
alias pacr="sudo pacman -R"
alias pacrns="sudo pacman -Rns"
alias remove="sudo pacman -Rns"
alias pacss="pacman -Ss"
alias pacqs="pacman -Qs"
alias pacsi="pacman -Si"
alias pacql="pacman -Ql"
alias pacsc="sudo pacman -Sc"
alias pacscc="sudo pacman -Scc"
alias pacrmorphans="sudo pacman -Rs $(pacman -Qdtq)"
alias pacmfast="sudo pacman-mirrors -f && sudo pacman -Syyu"

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm="trash"
