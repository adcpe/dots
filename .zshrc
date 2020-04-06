# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH
export PATH="$HOME/.rbenv/bin:$HOME/.local/bin:$PATH"

# oh-my-zsh stuff
export ZSH="/home/adc/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true

plugins=(
  colored-man-pages
  colorize
  command-not-found
  git
  history-substring-search
  sudo
  z
  zsh-completions 
)
autoload -U compinit && compinit
ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh
# end of oh-my-zsh stuff

# dotfiles git repo config alias
alias dots='/usr/bin/git --git-dir=$HOME/dots.git/ --work-tree=$HOME'

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv stuff
eval "$(rbenv init -)"

# VSCODE
alias code="code-oss"

# colorize alias
alias cat="ccat"
ZSH_COLORIZE_STYLE="paraiso-dark"

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
alias pacqi="pacman -Qi"
alias pacql="pacman -Ql"
alias pacsc="sudo pacman -Sc"
alias pacscc="sudo pacman -Scc"
alias pacrmorphans="sudo pacman -Rs $(pacman -Qdtq)"

# reflector simplified
alias pacreflect="sudo reflector --verbose --url https://www.archlinux.org/mirrors/status/json/ --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syuu"

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm="trash"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
