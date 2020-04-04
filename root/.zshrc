# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

TERM=xterm-256color

# oh-my-zsh stuff
export ZSH="/home/adc/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  colored-man-pages
  colorize
  command-not-found
  git
  history-substring-search
  kate
  z
  zsh-autosuggestions
  zsh-completions  
)
autoload -U compinit && compinit

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=14

source $ZSH/oh-my-zsh.sh
# oh-my-zsh stuff

# p10k
source ~/.p10k.zsh

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# VSCODIUM
alias code="code-oss"

# colorize alias
alias cat="ccat"

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

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm="trash"
