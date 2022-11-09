alias cra='npx create-react-app'
alias ssh="kitty +kitten ssh"

# dotfiles git repo
alias dots='git --git-dir=$HOME/.dots-git/ --work-tree=$HOME'
alias dadd='dots add'
alias ddif='dots diff'
alias dst='dots status'
alias dpom='dots push origin main'
alias dcom='dots commit'

alias c='codium'
alias cat='bat --theme gruvbox-dark'

alias ls='exa --group-directories-first'
alias la='ls -a'
alias ll='ls -l'

# pacman aliases
alias paci='yay -S'
alias pacun='yay -Rns'
alias pacu='yay -Syu'
alias pacup='yay -Syyu'
alias pacro='yay -Rns (pacman -Qdtq)'
alias pacs='yay -Ss'
alias pacsl='yay -Qs'
alias paccc='yay -Sc'
alias paclo='yay -Qdt'
alias pacinfo='yay -Si'

alias plasma_restart='kquitapp5 plasmashell && kstart5 plasmashell'

# trash-cli https://github.com/sindresorhus/trash-cli
alias rm='trash'

alias refresh-mirrors='sudo reflector --country "Canada,United States,Brazil," --latest 25 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist && pacup'
