# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

TERM=xterm-256color

# load antigen
source ~/.antigenrc

# p10k
source ~/.p10k.zsh
alias rp10k="p10k reload"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/adc/.zshrc'
autoload -Uz compinit
compinit

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

# source nerd fonts
source ~/.local/share/fonts/i_all.sh

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# colorize alias
alias cat="ccat"

# colorls stuff https://github.com/athityakumar/colorls
alias ls="colorls --light --git-status -h"
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
