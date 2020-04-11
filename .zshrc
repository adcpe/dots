# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# start of oh-my-zsh stuff
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

[ -f "$HOME/.dots-sources/path" ] && source "$HOME/.dots-sources/path"
[ -f "$HOME/.dots-sources/misc" ] && source "$HOME/.dots-sources/misc"
[ -f "$HOME/.dots-sources/aliases" ] && source "$HOME/.dots-sources/aliases"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
