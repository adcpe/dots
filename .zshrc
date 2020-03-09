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

# tilix fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# colorls stuff https://github.com/athityakumar/colorls
alias ls="colorls -A --gs"
alias ll="colorls -l  --gs"
alias la="colorls -la --sd --gs"
alias ld="colorls -d --gs"
alias lf="colorls -f --gs"
alias lr="colorls -r -gs"
alias lsd="colorls --sd --gs"
alias lsf="colorls --sf --gs"
source $(dirname $(gem which colorls))/tab_complete.sh # LEAVE AT THE END
